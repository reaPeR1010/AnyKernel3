### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# global properties
properties() { '
kernel.string=Kramal
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=Spacewar
device.name2=phone1
device.name3=lahaina
supported.versions=
supported.patchlevels=
supported.vendorpatchlevels=
'; } # end properties

# boot shell variables
BLOCK=boot;
IS_SLOT_DEVICE=auto;

# import functions/variables and setup patching - see for reference (DO NOT REMOVE)
. tools/ak3-core.sh;

# boot install
split_boot;

flash_boot;

## vendor_kernel_boot shell variables
BLOCK=vendor_boot;

# reset for vendor_kernel_boot patching
reset_ak;

# vendor_kernel_boot install
split_boot;

flash_boot;
