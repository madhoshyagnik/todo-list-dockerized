## use this ingress.yaml to create a basic ingress resource in local minikube cluster 

## but first use {minikube addons enable/disable ingress} to enable basic nginx ingress controller in minikube

## create ingress.yaml

## edit /etc/hosts file and add fake foo.bar.com along with ip address of minikube cluster, so when on local you search foo.bar.com, you get the app running inside the cluster without directly searching http://192.168.49.2:30001


