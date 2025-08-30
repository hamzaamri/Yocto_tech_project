include conf/distro/include/no-gplv3.inc

SUMMARY = "A console-only image for techleef project"
LICENSE = "MIT"


IMAGE_FEATURES += "splash allow-empty-password debug-tweaks dev-pkgs dbg-pkgs empty-root-password"
EXTRA_IMAGE_FEATURES = "debug-tweaks tools-debug dbg-pkgs tools-profile"
INHERIT += "image-buildinfo"
IMAGE_BUILDINFO_VARS:append = "DISTRO_NAME IMAGE_BASENAME MACHINE TUNE_PKGARCH"
IMAGE_BUILDINFO_VARS:append = " MACHINE_FEATURES DISTRO_FEATURES COMMON_FEATURES IMAGE_FEATURES"
IMAGE_BUILDINFO_VARS:append = " TUNE_FEATURES TARGET_FPU"

