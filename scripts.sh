docker build --no-cache -t delavandejulien/site-perso:1.1 .
docker push delavandejulien/site-perso:1.1

#kubectl apply -f k8s/

kubectl config set-context --current --namespace=site-perso
kubectl rollout restart deployment site-perso