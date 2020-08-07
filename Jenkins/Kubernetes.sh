sudo kubectl apply -f Kubernetes/deployment2.yaml
sudo kubectl apply -f Kubernetes/front-deployment2.yaml
sudo kubectl apply -f Kubernetes/service2.yaml
sleep 20
sudo kubectl get services
