
# Print success message
#
# Usage:
# - print_s <message>
print_s() {
  echo -e "✅ $1"
}

# Print warning message
#
# Usage:
# - print_w <message>
print_w() {
  echo -e "\e[33m$1\e[0m"
}

# Print error message
#
# Usage:
# - print_e <message>
print_e() {
  echo -e "\e[31m$1\e[0m" >&2
}

# Print message using bold font
#
# Usage:
# - print_bf <message>
print_bf() {
  echo -e "\e[1m$1\e[0m"
}
