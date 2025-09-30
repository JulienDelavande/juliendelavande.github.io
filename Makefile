TAG ?= 1.3.0
DOCKER_REPO ?= juliendelavande/site-perso
NAMESPACE ?= site-perso

# Modify the tag in site-perso-deployment.yaml as well when changing the tag here
to-prod:
	docker buildx build --no-cache --platform linux/amd64 --load -t $(DOCKER_REPO):$(TAG) . --push
	kubectl create namespace $(NAMESPACE) || true
	kubectl apply -f k8s/ -n $(NAMESPACE)
	kubectl rollout restart deployment site-perso -n $(NAMESPACE)