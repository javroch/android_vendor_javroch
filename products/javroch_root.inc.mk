ifneq ($(TARGET_BUILD_VARIANT),user)
# Enable root
PRODUCT_PACKAGES += \
	Superuser \
	su

TARGET_BUILD_ORIGINAL_SU := false

PRODUCT_PROPERTY_OVERRIDES += \
    ro.root.settings=1 \
    ro.root.settings.default=0
endif
