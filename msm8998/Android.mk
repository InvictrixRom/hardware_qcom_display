sdm-libs := sdm/libs
display-hals := include libqservice libqdutils $(sdm-libs)/utils $(sdm-libs)/core

ifneq ($(TARGET_IS_HEADLESS), true)
<<<<<<< HEAD
    display-hals += libcopybit libmemtrack hdmi_cec \
                    $(sdm-libs)/hwc $(sdm-libs)/hwc2 gpu_tonemapper libdrmutils
ifneq ($(TARGET_PROVIDES_LIBLIGHT),true)
    display-hals += liblight
endif
=======
    display-hals += libcopybit liblight libmemtrack hdmi_cec \
                    $(sdm-libs)/hwc2 gpu_tonemapper libdrmutils
>>>>>>> 041b5f56adf2c29a4963bb06f1204e39f70daa16
endif

display-hals += libgralloc1

ifeq ($(call is-vendor-board-platform,QCOM),true)
    include $(call all-named-subdir-makefiles,$(display-hals))
else
ifneq ($(filter msm% apq%,$(TARGET_BOARD_PLATFORM)),)
    include $(call all-named-subdir-makefiles,$(display-hals))
endif
endif
