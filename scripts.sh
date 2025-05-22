docker build --no-cache -t juliendelavande/site-perso:1.2 .
docker push juliendelavande/site-perso:1.2

kubectl config set-context --current --namespace=site-perso

# if modification in k8s do
kubectl apply -f k8s/

#kubectl rollout restart deployment site-perso
