# ssh_keys

Creates SSH key directories and generates ed25519 keypairs for git hosting accounts.

Keys are only created if they do not already exist — running this role on a machine with existing keys is safe.

## Variables

| Variable | Default | Description |
|---|---|---|
| `ssh_keys_user` | current user | Owner set on keys and directories |
| `ssh_keys_base_dir` | `~/.ssh` | Base directory for all keys |
| `ssh_keys_list` | see `defaults/main.yml` | List of keys to generate |

Each entry in `ssh_keys_list` requires:
- `path` — relative path from `ssh_keys_base_dir` (directory will be created automatically)
- `comment` — comment embedded in the public key
