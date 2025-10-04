FILESEXTRAPATHS:prepend := "${THISDIR}/${BPN}:"

# Add defconfig file
SRC_URI += "file://defconfig"

# Add extra fragments
SRC_URI:append = "\
     file://powersave.cfg \
     file://virtualisation.cfg \
     file://AHT10.cfg"

# Add defconfig to kernel_defconfig
KERNEL_DEFCONFIG = "defconfig"

# Add fragments to kernel config
KERNEL_CONFIG_FRAGMENTS:append = "\
     ${WORKDIR}/powersave.cfg \
     ${WORKDIR}/virtualisation.cfg \
     ${WORKDIR}/AHT10.cfg"