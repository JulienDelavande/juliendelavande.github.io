# Helm Chart - Site Perso

This folder contains the Helm chart for deploying the personal website.

## Installation

To install the chart:

```bash
helm install site-perso ./helm/site-perso
```

To install in a specific namespace:

```bash
helm install site-perso ./helm/site-perso --namespace site-perso --create-namespace
```

## Upgrade

To upgrade the deployment:

```bash
helm upgrade site-perso ./helm/site-perso
```

## Uninstallation

To uninstall the chart:

```bash
helm uninstall site-perso
```

## Configuration

Default values are located in `values.yaml`. You can modify them or create your own values file:

```bash
helm install site-perso ./helm/site-perso -f custom-values.yaml
```

### Main Parameters

- `replicaCount`: Number of replicas (default: 1)
- `image.repository`: Docker image repository
- `image.tag`: Docker image tag
- `namespace.name`: Namespace name
- `ingress.hosts`: Domain(s) for the ingress

## Validation

To validate the chart without installing it:

```bash
helm lint ./helm/site-perso
helm template site-perso ./helm/site-perso
```
