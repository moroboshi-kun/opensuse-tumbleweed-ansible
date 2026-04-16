#!/usr/bin/env bash
set -euo pipefail

DOTFILES_REPO_HTTPS="https://github.com/moroboshi/dot_files.git"
DOTFILES_DIR="${HOME}/Development/github/moroboshi/dot_files"
ANSIBLE_PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "==> Installing bootstrap dependencies..."
sudo zypper --non-interactive install git ansible python3

echo "==> Cloning dotfiles repo..."
mkdir -p "$(dirname "${DOTFILES_DIR}")"
if [[ ! -d "${DOTFILES_DIR}/.git" ]]; then
  git clone "${DOTFILES_REPO_HTTPS}" "${DOTFILES_DIR}"
else
  echo "    Dotfiles repo already present, skipping clone."
fi

echo "==> Installing Ansible collections..."
ansible-galaxy collection install -r "${ANSIBLE_PROJECT_DIR}/requirements.yml"

echo "==> Running playbook..."
ansible-playbook "${ANSIBLE_PROJECT_DIR}/site.yml"

echo ""
echo "Bootstrap complete."
echo "SSH keys have been generated. Add your public keys to GitHub/GitLab,"
echo "then update the dotfiles remote: git -C ${DOTFILES_DIR} remote set-url origin git@github.com:moroboshi/dot_files.git"
