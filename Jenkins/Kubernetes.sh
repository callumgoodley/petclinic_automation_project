sudo kubectl apply -f Kubernetes/deployment.yaml
sudo kubectl apply -f Kubernetes/front-deployment.yaml
sudo kubectl apply -f Kubernetes/service.yaml
sleep 20
sudo kubectl get services
