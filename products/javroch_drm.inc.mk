# Enable drm / copy files not present in gapps
PRODUCT_COPY_FILES +=  \
    vendor/javroch/props/phone/lib/libWVphoneAPI.so:system/lib/libWVphoneAPI.so \
    vendor/javroch/props/phone/vendor/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so \
    vendor/javroch/props/phone/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
    vendor/javroch/props/phone/vendor/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so \
    vendor/javroch/props/phone/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true
