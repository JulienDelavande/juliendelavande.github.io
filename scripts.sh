docker build --no-cache -t juliendelavande/site-perso:1.2 .
docker push juliendelavande/site-perso:1.2

#kubectl apply -f k8s/

kubectl config set-context --current --namespace=site-perso
kubectl rollout restart deployment site-perso