### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# global properties
properties() { '
kernel.string=FarFromStock Kernel
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=haydn
device.name2=haydn_in
device.name3=MI 11x Pro
device.name4=Redmi K40 Pro
device.name5=Xiaomi 11x Pro
device.name6=Redmi K40 Pro+
device.name7=MI 11i
device.name8=K40 Pro
device.name9=K40 Pro+
device.name10=milahaina
device.name11=haydnin
supported.versions=
supported.patchlevels=
supported.vendorpatchlevels=
'; } # end properties

### AnyKernel install
# boot shell variables
BLOCK=boot;
IS_SLOT_DEVICE=auto;
NO_BLOCK_DISPLAY=1;

# import functions/variables and setup patching - see for reference (DO NOT REMOVE)
. tools/ak3-core.sh;

# boot install
dump_boot;

write_boot;
## end boot install

BLOCK=vendor_boot;

# reset for init_boot patching
reset_ak;

split_boot;

flash_boot;
## end init_boot install
