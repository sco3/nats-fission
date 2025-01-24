export FISSION_NAMESPACE="fission"
kubectl create namespace $FISSION_NAMESPACE
kubectl create -k "github.com/fission/fission/crds/v1?ref=v1.20.5"
helm repo add fission-charts https://fission.github.io/fission-charts/
helm repo update
helm install --values fission-values.yml --version v1.20.5 --namespace $FISSION_NAMESPACE fission \
  --set serviceType=NodePort,routerServiceType=NodePort \
  --set persistence.enabled=false \
  fission-charts/fission-all