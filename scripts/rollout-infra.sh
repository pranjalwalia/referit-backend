kubectl apply -f infra/k8s/referit-backend-secret.yaml -n referit
echo "Waiting for Configuration..."
sleep(10) 

kubectl apply -f infra/k8s/referit-backend-configmap.yaml -n referit
echo "Waiting for Configuration..."
sleep(10)

kubectl apply -f infra/k8s/referit-backend-deployment.yaml -n referit
kubectl rollout restart deployment.apps/referit-backend-deployment -n referit
kubectl rollout status deployment.apps/referit-backend-deployment -n referit
