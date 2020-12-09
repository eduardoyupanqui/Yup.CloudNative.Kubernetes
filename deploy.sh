# helm upgrade --install my-test-app-release . \
#   --namespace=local \
#   --set test-app-api.image.tag="1.1.0" \
#   --set test-app-service.image.tag="1.1.0" \
#   --set global.env.ASPNETCORE_ENVIRONMENT="Staging" \
#   --set test-app-api.env.ASPNETCORE_ENVIRONMENT="Development"

helm upgrade --install my-test-app-release . \
  --namespace=local \
  --set test-app-cli.image.tag="1.1.1" \
  --set test-app-api.image.tag="1.1.1" \
  --set test-app-service.image.tag="1.1.1" \
  --debug