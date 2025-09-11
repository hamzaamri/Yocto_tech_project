SUMMARY = "Create users and groups with secure passwords"
DESCRIPTION = "Adds custom users and groups to the target image with hashed passwords"
LICENSE = "MIT"

inherit extrausers

PASSWD = "$5$FeSBhA603WLAXyRt$WDl61aeMD/jTaAcvtkPHn/5/M/.C1iuk6h3eAgi3yrA"

EXTRA_USERS_PARAMS = "useradd -p '${PASSWD}' hamza-user; "