function kill_emu() {
  pkill -9 qemu || true
  pkill -9 qemu-system-x86_64 || true
}

# --- Print ---

function print_s {
  echo -e "✅ $1"
}

function print_w() {
  echo -e "\e[33m$1\e[0m"
}

function print_e {
  echo -e "\e[31m$1\e[0m" >&2
}

function print_em() {
  echo -e "\e[1m$1\e[0m"
}

# vim: filetype=sh
