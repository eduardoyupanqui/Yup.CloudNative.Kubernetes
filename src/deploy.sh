# helm upgrade --install my-test-app-release . \
#   --namespace=local \
#   --set test-app-api.image.tag="1.1.0" \
#   --set test-app-service.image.tag="1.1.0" \
#   --set global.env.ASPNETCORE_ENVIRONMENT="Staging" \
#   --set test-app-api.env.ASPNETCORE_ENVIRONMENT="Development"

# helm upgrade --install my-test-app-release . \
#   --namespace=local \
#   --set test-app-cli.image.tag="1.1.1" \
#   --set test-app-cli-exec-host.image.tag="1.1.1" \
#   --set test-app-api.image.tag="1.1.1" \
#   --set test-app-service.image.tag="1.1.1" \
#   --debug


# Crear un ClusterRoleBinding, para dar permisos de ver el estado de los jobs dentro de un namespace

# apiVersion: rbac.authorization.k8s.io/v1beta1
# kind: ClusterRoleBinding
# metadata:
#   name: wait-for-rbac
# subjects:
#   - kind: ServiceAccount
#     # Reference to upper's `metadata.name`
#     name: default
#     # Reference to upper's `metadata.namespace`
#     namespace: default
# roleRef:
#   kind: ClusterRole
#   name: cluster-admin
#   apiGroup: rbac.authorization.k8s.io

#!/bin/bash
set -euo pipefail

# Change to this directory if you're running outside the directory
cd "$(dirname "$0")"

# Build the current docker images
#./docker_build.sh $*

# Deploy and wait for success
CHART="charts/test-app" \
RELEASE_NAME="my-test-app-release" \
NAMESPACE="default" \
HELM_ARGS="--set test-app-cli.image.tag=1.1.1 \
  --set test-app-api.image.tag=1.1.1 \
  --set test-app-service.image.tag=1.1.1 \
" \
./deploy_and_wait.sh