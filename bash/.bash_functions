function kill_emu() {
  pkill -9 qemu || true
  pkill -9 qemu-system-x86_64 || true
}

function sdk_ls() {
  local candidate=${1:-java}
  local versions="$(sdk list $candidate | grep installed)"
  if [[ -z "$versions" ]]; then
    print_e "Candidate not found"
    return 1
  fi
  echo -e "SDK versions for '$(print_em $candidate)':\n\n$versions"
}

# --- FS ---

function fhash() {
  sha1sum $1 | cut -d " " -f1
}

function fsize() {
  if [[ -d "$1" ]]; then
    du -sb "$1" | cut -f1
  elif [[ -f "$1" || -L "$1" ]]; then
    stat -Lc %s "$1"
  else
    print_e "Unsupported file type"
    return 1
  fi
}

function fsize_hr() {
  echo $(fsize "$1" | numfmt --to=iec)
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
