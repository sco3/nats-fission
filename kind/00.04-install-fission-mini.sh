

kubectl create -k "github.com/fission/fission/crds/v1?ref=v1.20.5"
export FISSION_NAMESPACE="fission"
kubectl create namespace $FISSION_NAMESPACE
kubectl config set-context --current --namespace=$FISSION_NAMESPACE
kubectl apply -f https://github.com/fission/fission/releases/download/v1.20.5/fission-all-v1.20.5-minikube.yaml
kubectl config set-context --current --namespace=default #to change context to default namespace after installation
