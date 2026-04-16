# nvm

Installs NVM (Node Version Manager) and a specified Node.js version.

## Variables

| Variable | Default | Description |
|---|---|---|
| `nvm_version` | `v0.40.4` | NVM version to install |
| `nvm_dir` | `~/.nvm` | NVM installation directory |
| `nvm_node_version` | `24.14.1` | Node.js version to install via NVM |

## Notes

NVM is only installed if `~/.nvm/nvm.sh` does not already exist. Node.js is only installed if the specified version is not already present in `~/.nvm/versions/node/`.
