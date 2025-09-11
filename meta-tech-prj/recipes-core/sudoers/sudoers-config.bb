SUMMARY = "Give access user to hamza-user"
LICENSE = "closed"

inherit allarch 
SRC_URI = "file://hamza-user"
SUDOERS_DIR = "${D}/etc/sudoers.d"

do_install() {
    install -d ${SUDOERS_DIR}
    install -m 400 ${WORKDIR}/hamza-user ${SUDOERS_DIR}/hamza-user

}


