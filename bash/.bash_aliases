
# ======================================= #
#                 ANDROID                 #
# ======================================= #

# DEV SETTINGS
alias dev-mode="adb shell settings put global development_settings_enabled 1"

# DISABLE ANDROID VERIFIED BOOT (AVB) VERIFICATION
# DISABLE SYSTEM PARTITION INTEGRITY CHECKS
alias no-verity="adb shell avbctl disable-verification && adb disable-verity"

# SKINS
alias emulator-9="emulator -writable-system -skin 1250x834 -selinux permissive &"
alias emulator-101="emulator -writable-system -skin 1280x720 -selinux permissive &"
alias emulator-104="emulator -writable-system -skin 960x1280 -selinux permissive &"
alias emulator-12="emulator -writable-system -skin 1250x1562 -selinux permissive &"
alias emulator-port="emulator-104"
alias emulator-land="emulator-101"

