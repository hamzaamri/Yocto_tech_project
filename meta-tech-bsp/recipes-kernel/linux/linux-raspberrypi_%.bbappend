FILESEXTRAPATHS:prepend := "${THISDIR}/${BPN}:"
SRC_URI += "file://defconfig"
# Add extra fragments
SRC_URI += "file://powersave.cfg"
SRC_URI += "file://virtualisation.cfg"

KERNEL_DEFCONFIG = "defconfig"
KERNEL_CONFIG_FRAGMENTS += "${WORKDIR}/powersave.cfg"
KERNEL_CONFIG_FRAGMENTS += "${WORKDIR}/virtualisation.cfg"