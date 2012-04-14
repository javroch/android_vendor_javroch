# Inherit AOSP device configuration
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Inherit common
$(call inherit-product, vendor/javroch/products/javroch_common.mk)

# Enable Sim Toolkit
-include vendor/javroch/products/javroch_stk.inc.mk

# Device specific product configuration
PRODUCT_NAME := javroch_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung
PRODUCT_RELEASE_NAME := GalaxyNexus

## Overlay
# PRODUCT_PACKAGE_OVERLAYS += \
# 	vendor/javroch/overlay/toro

# Verizon Overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/javroch/overlay/verizon
