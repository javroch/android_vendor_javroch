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
JAVROCH_TARGET_OTA := false

ifeq ($(JAVROCH_TARGET_OTA),true)
TARGET_NO_RECOVERY := false
TARGET_OTA_NO_RECOVERY := true
else
TARGET_NO_RECOVERY := true

# for some reason, building 'otapackage' will fail because TARGET_NO_RECOVERY is also true
TARGET_OTA_NO_RECOVERY := true
endif
