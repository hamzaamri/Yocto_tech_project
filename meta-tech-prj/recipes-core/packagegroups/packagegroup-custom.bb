DESCRIPTION = "My Custom Package Groups"

inherit packagegroup

RDEPENDS:${PN}-dev = "\
    dropbear \
    psplash"

RDEPENDS:${PN}-dbg = "\
    strace \
    gdb"
