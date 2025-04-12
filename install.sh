#!/bin/bash -e

cd "$(dirname "$(realpath "${BASH_SOURCE[0]}")")"

create_symlink() {
  local src=$1
  local dst=${2:-$HOME}

  ln -sfv "$src" "$dst"
}

set_up_bash() {
  create_symlink "$PWD/bash/.bashrc"
  create_symlink "$PWD/bash/.bash_variables"
  create_symlink "$PWD/bash/.envsetup.sh"
  source "$HOME/.bashrc"
}

set_up_vim() {
  create_symlink "$PWD/vim/.vimrc"
}

set_up_tmux() {
  create_symlink "$PWD/tmux/.tmux.conf"
}

set_up_ssh() {
  create_symlink "$PWD/ssh/config" "$HOME/.ssh"
  local agent_dir="$HOME/.config/1Password/ssh"
  [[ -d "$agent_dir" ]] && create_symlink "$PWD/ssh/agent.toml" "$agent_dir"
}

# +++ MAIN +++

set_up_bash
set_up_vim
set_up_tmux
set_up_ssh

