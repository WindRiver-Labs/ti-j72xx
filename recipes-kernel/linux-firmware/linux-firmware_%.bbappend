PACKAGE_ARCH_ti-j72xx = "${MACHINE_ARCH}"
FILESEXTRAPATHS_prepend_ti-j72xx := "${THISDIR}/files:"

SRC_URI_append_ti-j72xx = "\
	file://pvdec_full_bin.fw \
"

TARGET = "pvdec_full_bin.fw"

do_install_append_ti-j72xx() {
	install -m 0644 ${WORKDIR}/${TARGET} ${D}${nonarch_base_libdir}/firmware/${TARGET}
}

FILES_${PN}-pvdec-full-bin_ti-j72xx = "\
        ${nonarch_base_libdir}/firmware/${TARGET} \
"

COMPATIBLE_MACHINE_ti-j72xx = "ti-j72xx"

LICENSE_${PN}_append_ti-j72xx = "\
	& Firmware-cadence \
"

LICENSE_append_ti-j72xx = "\
	& Firmware-cadence \
"

FILES_${PN}-cadence_ti-j72xx = " \
  ${nonarch_base_libdir}/firmware/cadence/mhdp8546.bin \
"
FILES_${PN}-cadence-license_ti-j72xx = " \
  ${nonarch_base_libdir}/firmware/LICENCE.cadence \
"
RDEPENDS_${PN}-cadence_ti-j72xx += "${PN}-cadence-license"
LICENSE_${PN}-cadence_ti-j72xx       	= "Firmware-cadence"
LICENSE_${PN}-cadence-license_ti-j72xx  = "Firmware-cadence"

PACKAGES_prepend_ti-j72xx = "\
	${PN}-cadence \
	${PN}-cadence-license \
	${PN}-pvdec-full-bin \
	"
