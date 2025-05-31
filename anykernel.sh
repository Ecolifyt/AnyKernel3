### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# global properties
properties() { '
kernel.string=Google Pixel 7 Pro with KSU-NEXT/SUSFS by EduardoA3677 @ xda-developers
do.devicecheck=0
do.modules=1
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=cheetah
device.name2=pantah
device.name3=panther
device.name4=lynx
device.name5=
supported.versions=15
supported.patchlevels=2023-12 - 2025-04
supported.vendorpatchlevels=2023-12 - 2025-04
'; } # end properties

### AnyKernel install
## boot files attributes
boot_attributes() {
set_perm_recursive 0 0 755 644 $RAMDISK/*;
set_perm_recursive 0 0 750 750 $RAMDISK/init* $RAMDISK/sbin;
} # end attributes

# boot shell variables
BLOCK=boot;
IS_SLOT_DEVICE=1;
RAMDISK_COMPRESSION=auto;
PATCH_VBMETA_FLAG=auto;

# import functions/variables and setup patching - see for reference (DO NOT REMOVE)
. tools/ak3-core.sh;

split_boot;
flash_boot;
flash_generic vendor_kernel_boot;
flash_generic vendor_dlkm;
flash_generic dtbo;
flash_generic system_dlkm;
