# dotfiles

Deploys personal dotfiles from the local dot_files repository to their correct locations.

## Requirements

The dot_files repository must be cloned at `dotfiles_repo_path` before running this role.

## Variables

| Variable | Default | Description |
|---|---|---|
| `dotfiles_repo_path` | `~/Development/github/moroboshi/dot_files` | Path to the cloned dot_files repo |
| `dotfiles_distro` | `opensuse` | Distro subdirectory for bashrc (`opensuse`, `fedora`, `ubuntu`) |

## Files deployed

| Source | Destination |
|---|---|
| `bash/{{ dotfiles_distro }}/bashrc` | `~/.bashrc` |
| `bash/bash_aliases` | `~/.bash_aliases` |
| `bash/bash_functions` | `~/.bash_functions` |
| `git/gitconfig` | `~/.gitconfig` |
| `git/gitconfig-gh-moroboshi` | `~/.config/git/gitconfig-gh-moroboshi` |
| `git/gitconfig-gh-onsokumaru` | `~/.config/git/gitconfig-gh-onsokumaru` |
| `git/gitconfig-gl-moroboshi` | `~/.config/git/gitconfig-gl-moroboshi` |
| `ssh/config` | `~/.ssh/config` (mode 0600) |
| `vim/vimrc` | `~/.vimrc` |
| `vim/coc-settings.json` | `~/.vim/coc-settings.json` |
| `kitty/kitty.conf` | `~/.config/kitty/kitty.conf` |
| `kitty/themes/` | `~/.config/kitty/themes/` |
| `powerline/default.json.themes` | `~/.config/powerline/themes/shell/default.json` |
| `powerline/default.json.colorschemes` | `~/.config/powerline/colorschemes/shell/default.json` |
