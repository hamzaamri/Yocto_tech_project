FILESEXTRAPATHS:prepend := "${THISDIR}/${BPN}:"

# Add defconfig file
SRC_URI += "file://defconfig"

# Add extra fragments
SRC_URI += "file://powersave.cfg"
SRC_URI += "file://virtualisation.cfg"

Add defconfig to kernel_defconfig
KERNEL_DEFCONFIG = "defconfig"

# Add fragments to kernel config
KERNEL_CONFIG_FRAGMENTS += "${WORKDIR}/powersave.cfg"
KERNEL_CONFIG_FRAGMENTS += "${WORKDIR}/virtualisation.cfg"