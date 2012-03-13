# Inherit AOSP device configuration
$(call inherit-product, build/target/product/full.mk)

# Inherit common
$(call inherit-product, vendor/javroch/products/javroch_common.mk)

# Device specific product configuration
PRODUCT_NAME := javroch_generic
PRODUCT_BRAND := javroch
PRODUCT_DEVICE := generic
PRODUCT_MODEL := javroch
PRODUCT_MANUFACTURER := javroch
PRODUCT_RELEASE_NAME := javroch

# Overlay
# PRODUCT_PACKAGE_OVERLAYS += \
#	vendor/javroch/overlay/generic


