cd;
sudo apt install curl vim wget gcc docker.io -y;
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl;
sudo chmod +x kubectl 
sudo mv kubectl /usr/local/bin/;
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64;
chmod +x minikube;
sudo mv minikube /usr/local/bin/;
wget https://get.helm.sh/helm-v3.1.0-rc.1-linux-amd64.tar.gz;
tar xvfz helm-v3.1.0-rc.1-linux-amd64.tar.gz ;
sudo chmod +x linux-amd64/helm ;
sudo mv linux-amd64/helm /usr/local/bin/helm;
helm plugin install https://github.com/chartmuseum/helm-push;
helm repo add stable https://kubernetes-charts.storage.googleapis.com/;
helm repo update;
sudo minikube delete ;
sudo minikube status;
sudo minikube start --vm-driver=none;
sudo minikube addons enable ingress;
