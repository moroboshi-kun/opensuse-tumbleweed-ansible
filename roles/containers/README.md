# containers

Installs Docker and docker-compose via zypper and manages the Docker service.

## Variables

| Variable | Default | Description |
|---|---|---|
| `containers_packages` | `[docker, docker-compose]` | List of packages to install |
| `containers_manage_service` | `true` | Whether to enable and start the Docker service |

Set `containers_manage_service: false` to skip service management (e.g. in container-based test environments).
