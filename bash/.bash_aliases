
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

# RESOLUTIONS
alias size="adb shell wm size"
# DENSITY = 180
alias size-9="adb shell wm size 1250x834; adb shell wm density 167"
# DENSITY = 160
alias size-101="adb shell wm size 1280x720; adb shell wm density 145"
# DENSITY = 160
alias size-104="adb shell wm size 960x1280; adb shell wm density 154"
# DENSITY = 180
alias size-12="adb shell wm size 1250x1562; adb shell wm density 167"

# RRO DEBUGGING
alias dump-rro="adb shell cmd overlay dump "
alias dump-idmap="adb shell idmap2 dump --idmap-path " # example path: /data/resource-cache/vendor@overlay@DaciaBrandingFramework.apk@idmap


# ======================================= #
#                 RENAULT                 #
# ======================================= #

# BRANDING
alias set-branding="adb shell setprop persist.vendor.ui.branding"
alias get-branding="adb shell getprop persist.vendor.ui.branding"

# DISABLE SUW
alias no-suw="adb shell am force-stop com.renault.car.setupwizardoverlay"

# DRIVING MODE
alias rhd="adb shell cmd DiagAdb Configuration set hmi_config/hmi_feature/vehicle_handdriving:RIGHT_HAND_DRIVINGRHD"
alias lhd="adb shell cmd DiagAdb Configuration set hmi_config/hmi_feature/vehicle_handdriving:LEFT_HAND_DRIVING_LHD"

# HVAC
alias hvac="adb shell cmd DiagAdb Configuration set hmi_config/comfort/ac_display:1 && adb shell cmd DiagAdb Configuration set hmi_config/comfort/front_defrost:1 && adb shell cmd DiagAdb Configuration set hmi_config/comfort/rear_defrost:1 && adb shell cmd DiagAdb Configuration set hmi_config/comfort/seatheatingventilation:8 && adb shell cmd DiagAdb Configuration set hmi_config/comfort/heated_steering_wheel_clim:1 && adb shell cmd DiagAdb Configuration set hmi_config/comfort/blower_setting:1 && adb shell cmd DiagAdb Configuration set hmi_config/comfort/distr_trilevel:1 && adb shell cmd DiagAdb Configuration set hmi_config/comfort/distribution:1 && adb shell cmd DiagAdb Configuration set hmi_config/comfort/cfg_sync_clim:1 && adb shell cmd DiagAdb Configuration set hmi_config/comfort/cfg_heatseat_level:1 && adb shell cmd DiagAdb Configuration set hmi_config/comfort/cfg_dual_clim:1 && adb shell cmd DiagAdb Configuration set hmi_config/comfort/cfg_sync_clim:1 && adb shell cmd DiagAdb Configuration set hmi_config/comfort/clim:1 && adb shell cmd DiagAdb Configuration set hmi_config/comfort/auto:1 && adb shell cmd DiagAdb Configuration set hmi_config/comfort/clim_eco_display:1 && adb shell cmd DiagAdb Configuration set hmi_config/comfort/caman_careg:1 && adb shell cmd DiagAdb Configuration set hmi_config/comfort/cfg_dualzone_monozone:1 && adb shell cmd DiagAdb Configuration set hmi_config/hmi_feature/vehiclemode:1 && adb shell cmd DiagAdb Configuration set hmi_config/comfort/airquality_display:1 && adb shell cmd DiagAdb Configuration set hmi_config/comfort/pm2_dot_5:1 && adb reboot"

# SYSTEM UI
alias disable-color-systemui="adb shell cmd overlay disable --user 0 com.android.systemui:accent && adb shell cmd overlay disable --user current com.android.systemui:accent"

