# kubernetes

Installs kubectl via the Kubernetes zypper repository and minikube as a binary download.

## Variables

| Variable | Default | Description |
|---|---|---|
| `kubernetes_kubectl_repo` | `https://pkgs.k8s.io/core:/stable:/v1.35/rpm/` | Zypper repo URL for kubectl |
| `kubernetes_kubectl_repo_name` | `kubernetes` | Zypper repo name |
| `kubernetes_minikube_version` | `v1.38.1` | Minikube version to install |
| `kubernetes_minikube_url` | derived from version | Download URL for minikube binary |
| `kubernetes_minikube_dest` | `/usr/local/bin/minikube` | Install path for minikube binary |

## Notes

To upgrade kubectl, update `kubernetes_kubectl_repo` to point to the new stable minor version channel (e.g. `v1.36`).

To upgrade minikube, update `kubernetes_minikube_version`.
