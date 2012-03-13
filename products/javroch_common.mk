# Generic javroch product
PRODUCT_NAME := javroch
PRODUCT_BRAND := javroch
PRODUCT_DEVICE := generic

# Enable root
-include vendor/javroch/products/javroch_root.inc.mk

# Enable wallpapers
-include vendor/javroch/products/javroch_wallpapers.inc.mk

# Enable common overlays
PRODUCT_PACKAGE_OVERLAYS += \
	vendor/javroch/overlay/common

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# are we making a fastboot build or ota? i wish i could figure out hwo to tell if the target they chose was 'otapackage' instead
TARGET_OTA_NO_RECOVERY := true
# TARGET_NO_RECOVERY # use this instead for fastboot, comment out the other line
