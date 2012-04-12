# Generic javroch product
PRODUCT_NAME := javroch
PRODUCT_BRAND := javroch
PRODUCT_DEVICE := generic

# Enable Clean extras
-include vendor/javroch/products/javroch_clean_extras.inc.mk

# Enable root
-include vendor/javroch/products/javroch_root.inc.mk

# Enable drm (only does anything if you've flashed gapps)
-include vendor/javroch/products/javroch_drm.inc.mk

# Enable wallpapers
-include vendor/javroch/products/javroch_wallpapers.inc.mk

# Enable extra global actions (reboot/screenshot)
-include vendor/javroch/products/javroch_global_actions.inc.mk

# Enable battery percentage setting
-include vendor/javroch/products/javroch_battery_percent.inc.mk

# Enable launcher screen count option
-include vendor/javroch/products/javroch_launcher.inc.mk

# Enable common overlays
PRODUCT_PACKAGE_OVERLAYS += \
	vendor/javroch/overlay/common

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# are we making a fastboot build or ota? i wish i could figure out hwo to tell if the target they chose was 'otapackage' instead
TARGET_OTA_NO_RECOVERY := true
# TARGET_NO_RECOVERY # use this instead for fastboot, comment out the other line
