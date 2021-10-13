IMAGE_INSTALL += "${@bb.utils.contains("MACHINE_FEATURES", "gpu", "img-pvr-sdk ti-img-rogue-umlibs-dev ti-img-rogue-driver devil", " ", d)}"
IMAGE_INSTALL += 'u-boot-ti-staging'
