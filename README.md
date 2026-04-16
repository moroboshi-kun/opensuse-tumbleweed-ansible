# opensuse-tumbleweed-ansible

Ansible project for configuring a fresh openSUSE Tumbleweed workstation.

## Bootstrap (fresh system)

On a fresh system without git installed, download and run the bootstrap script directly:

```bash
curl -fsSL https://raw.githubusercontent.com/moroboshi-kun/opensuse-tumbleweed-ansible/main/bootstrap.sh | bash
```

The bootstrap script installs `git`, `ansible`, and `python3` via zypper, clones
both this repo and the dotfiles repo over HTTPS, installs required Ansible
collections, then runs the full playbook.

After the playbook completes, add your generated SSH public keys to GitHub/GitLab,
then switch the dotfiles remote to SSH:

```bash
git -C ~/Development/github/moroboshi/dot_files remote set-url origin git@github.com:moroboshi-kun/dot_files.git
```

## Day-to-day usage

Activate the virtual environment, then run the playbook:

```bash
source ~/.venv/ansible/bin/activate
ansible-playbook site.yml --ask-become-pass
```

Run a single role with tags:

```bash
source ~/.venv/ansible/bin/activate
ansible-playbook site.yml --tags packages --ask-become-pass
```

## Setting up the virtual environment

After bootstrap, set up a dedicated venv for ongoing use:

```bash
python3 -m venv ~/.venv/ansible
source ~/.venv/ansible/bin/activate
pip install ansible ansible-lint molecule molecule-plugins[docker]
ansible-galaxy collection install -r requirements.yml
```

## Roles

| Role | Description |
|---|---|
| packages | Core system packages |
| dev_tools | Development tools (gcc, go, gh, opentofu, etc.) |
| containers | Docker and docker-compose |
| kubernetes | kubectl and minikube |
| browsers | Brave browser and Thunderbird |
| dotfiles | Personal dotfiles from external repo |
| ssh_keys | SSH keypair generation |
| nvm | Node Version Manager and Node.js |
| powerline | Powerline prompt via pipx |

## Testing

Each role has a Molecule test suite using the openSUSE Tumbleweed container image:

```bash
source ~/.venv/ansible/bin/activate
cd roles/<role> && molecule test
```
