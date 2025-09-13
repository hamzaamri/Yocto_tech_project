SUMMARY = "Create recipe append to add defconfig"
DESCRIPTION = "${SUMMARY}"
LICENSE = "CLOSED"

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
SRC_URI += "file://defconfig"
# Add extra fragments
SRC_URI += "file://powersave.cfg"
SRC_URI += "file://virtualisation.cfg"

KERNEL_DEFCONFIG = "defconfig"
