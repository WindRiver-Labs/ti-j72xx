#
# Copyright (C) 2020 Wind River Systems, Inc.
#

COMPATIBLE_MACHINE_ti-j72xx = "ti-j72xx"
TARGET_SUPPORTED_KTYPES_ti-j72xx = "standard preempt-rt"

KERNEL_VERSION_SANITY_SKIP = "1"
SRCREV_machine_ti-j72xx ?= "${AUTOREV}"
SRCREV_meta_ti-j72xx ?= "${AUTOREV}"
