resource "azurerm_virtual_network" "main" {
  name                = "${var.prefix}-network"
  address_space       = ["10.0.0.0/16"]
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
}

resource "azurerm_subnet" "internal" {
  name                 = "internal"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefix       = "10.0.2.0/24"
}

resource "azurerm_network_interface" "main" {
  name                = "${var.prefix}-nic"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = azurerm_subnet.internal.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.myterraformpublicip.id
}
}
resource "azurerm_public_ip" "myterraformpublicip" {
  name                         = "myPublicIP"
  location                     = "uk south"
  resource_group_name          = var.resource_group_name
  allocation_method  = "Static"

  tags = {
    environment = "Testing"
  }

}

data "template_file" "cloudconfig" {
  template = "${file("/home/jenkins/.jenkins/workspace/build-test/petclinic_automation_project/Terraform/VM/template.tpl")}"
}

data "template_cloudinit_config" "config" {
  gzip          = true
  base64_encode = true

  part {
    content_type = "text/cloud-config"
    content      = "${data.template_file.cloudconfig.rendered}"
  }
}

# Create virtual machine
resource "azurerm_virtual_machine" "myterraformvm" {
  name                  = "myVM"
  location              = "uksouth"
  resource_group_name   = var.resource_group_name
  network_interface_ids = ["${azurerm_network_interface.main.id}"]
  vm_size               = "Standard_B1s"

  identity {
    type = "SystemAssigned"
  }

  storage_os_disk {
    name              = "myOsDisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  os_profile {
    computer_name  = "myvm"
    admin_username = "azureuser"
    admin_password = "Pas5word"
    custom_data    = "${data.template_cloudinit_config.config.rendered}"
  }

  tags = {
    environment = "Testing"
  }

  os_profile_linux_config {
    disable_password_authentication = false

}
}
data "azurerm_subnet" "example" {
    name = azurerm_subnet.internal.name
    resource_group_name = var.resource_group_name
    virtual_network_name = azurerm_virtual_network.main.name
    depends_on = [
      azurerm_virtual_network.main
      ]
}
