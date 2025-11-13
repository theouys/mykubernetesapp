# dotnet example with kubernetes (minikube)
This example is to show you how you can take a dotnet application and roll it out to a kubernetes cluster making use of docker containers and a local repository.
## Note
If you have your docker container on the host it will not be recognized in the kubeternetes environment for that do the following commands.
- To set docker repo to kubernetes run. Use docker info command afterwards to show you if you have switched to minikube environment also make sure to use minikube with the docker driver.
  
  
  eval $(minikube docker-env)
  
  
  To unset
  
  
  eval $(minikube docker-env) --unset
  
- Use the following command to build a docker image.
  
  docker build -t mydockerapp:latest .

- Use the followig command to apply a deployment
  
  kubectl apply -f Deployment.yaml
  
-  Use the followig command to apply a deployment
  
   kubectl apply -f Service.yaml
