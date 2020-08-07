<h1 id="petclinic-automation-project">Petclinic Automation Project</h1>
<h1 id="contents">Contents</h1>
<ul>
<li>
  
<a href="https://trello.com/b/rBI13jJk/group-project">Trello Board</a>

</li>
<li>
  
<a href="https://drive.google.com/file/d/1uVVw3HS9nQGnMFknOAYQVDPsUplLz1bc/view?usp=sharing">Presentation</a>

</li>
<li>

[The Brief](#the-brief)

</li>
<li>
  
[Architecture](#architecture)

<ul>
<li>
  
[Ci Pipeline](#ci-pipeline)
  
</li>
<li>
  
[Infrastructure Design](#infrastructure-design)

</li>
<li>
  
[Kubernetes Deployment](#deployment)
  
</li>
<li>
  
[Automation Flow](#automation)
  
</li>
<li>
  
[Git Deployment](#git)
  
</li>
<li>
  
[Kubernetes Communication](#communication)
  
</li>
</ul>
</li>
<li>

[Risk Assessment](#risk-assessment)

</li>
<li>
  
[Technologies](#technologies)

<ul>
<li>
 
[GCP for Jenkins](#gcp-for-jenkins)

</li>
<li>
  
[Microsoft Azure](#microsoft-azure)

</li>
<li>
  
[Terraform](#terraform)

</li>
<li>
  
[Docker](#docker)

</li>
<li>
  
[Kubernetes](#kubernetes)

</li>
</li>
</ul>
<li>
  
[Pricing](#pricing)

</li>
</ul>
<h1 id="the-brief">The brief</h1>
<p>We needed to plan, design and implement a solution to automate the workflows and deployments of an application that was given to us. During this, we would need to implement the technologies we have learnt and used during our training.</p>
<h1 id="architecture">Architecture</h1>
<h3 id="ci-pipeline">CI Pipeline</h3>
<p><img src="https://i.imgur.com/FUXioym.png" alt="enter image description here"></p>
<h3 id="infrastructure-design">Infrastructure Design</h3>
<p align="center"><img src="https://i.imgur.com/emcmhnh.png" alt="enter image description here"></div></p>
<h3 id="deployment">Deployment with Kubernetes</h3>
<p><img src="https://i.imgur.com/xwTj7Tt.png" alt="enter image description here"></p>
<h3 id="automation">Automation Flow</h3>
<p><img src="https://i.imgur.com/JVRe3cH.png" alt="enter image description here"></p>
<h3 id="git">Git Deployment</h3>
<p><img src="https://i.imgur.com/Kg406RG.png" alt="enter image description here"></p>
<h3 id="communication">Kubernetes Communication</h3>
<p><img src="https://i.imgur.com/XT3JEMZ.png" alt="enter image description here"></p>
<h1 id="risk-assessment">Risk Assessment</h1>
<p><img src="https://i.imgur.com/nnljm6E.png" alt="enter image description here"></p>
<h1 id="technologies">Technologies</h1>
<h3 id="gcp-for-jenkins">GCP for Jenkins</h3>
<p>We chose to use a Google Cloud Platform (GCP) VM to run Jenkins and automate the deployment of the app. We had 2 reasons for this. We only needed to run Jenkins on this VM, and creating a VM in GCP is a lot quicker than in Azure. We also chose GCP because for this because the rest of the resources were to be created on MS Azure with Terraform. Due to the limitations of our free trials, we are restricted to a certain number of resources, and didn’t want to have issues by running another VM just for Jenkins on MS Azure.</p>
<h3 id="microsoft-azure">Microsoft Azure</h3>
<p>Due to us already knowing how Azure works, it was more cost and time effective to use this cloud service. Azure also offers other capabilities; The PaaS Capabilities are much stronger and faster than AWS for example.</p>
<h3 id="terraform">Terraform</h3>
<p>We chose Terraform to automate the deployment of infrastructure on MS Azure. As we don’t know any other tools that can do this, Terraform was our only choice. We also used Terraform with a cloud-init to configure the resources. We created two Terraform configurations as we needed a backup if deploying with Kubernetes didn’t work. The first one created a resource group with a VM and Scale Set to allow us to deploy the application with Docker. The second created a Kubernetes cluster which we used to deploy the application with Kubernetes deployments and services.</p>
<h3 id="docker">Docker</h3>
<p>Docker was used for containerisation, this allowed for the application to easilt to be scaled up or down. This also allowed for us to revert back into any older versions that we had pushed to dockerhub if needs be. Docker images are compatible with Kubernetes, therefore allowing for smooth deployment.</p>
<h3 id="kubernetes">Kubernetes</h3>
<p>We chose Kubernetes for a number of reasons. We were using docker to create our images and Kubernetes is compatible with Docker. Since we were using azure, kubernetes allows for the deployments of clusters in azure.</p>
<h1 id="pricing">Pricing</h1>
<p><img src="https://i.imgur.com/3ns1fGo.jpg" alt="enter image description here"></p>


