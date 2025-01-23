fission environment create --name go --image ghcr.io/fission/go-env-1.23 --builder ghcr.io/fission/go-builder-1.23
fission fn create --name producer --env go --src "producer/*" --entrypoint Handler
