PACKAGECONFIG_remove_ti-j72xx += "${@bb.utils.contains("MACHINE_FEATURES", "gpu", "xwayland", "", d)}"
