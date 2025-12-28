# Personal Website

Static website hosted at [delavande.fr](https://delavande.fr)

## Development

The site is built with plain HTML, CSS, and JavaScript using Nginx as the web server.

## Deployment

### Using Docker

```bash
docker build -t juliendelavande/site-perso:latest .
docker run -p 8080:80 juliendelavande/site-perso:latest
```

### Using Helm

```bash
helm upgrade --install site-perso ./helm/site-perso --namespace site-perso
```

See [helm/README.md](helm/README.md) for more details.

### CI/CD

The site is automatically built and deployed to Kubernetes on every push to `main` via GitHub Actions.

Required secrets:
- `DOCKER_USERNAME`: Docker Hub username
- `DOCKER_PASSWORD`: Docker Hub token
- `KUBECONFIG`: Base64-encoded kubeconfig file
