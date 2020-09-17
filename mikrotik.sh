#!/bin/sh

mkdir /opt/unetlab/addons/qemu/mikrotik-6.46.7

cd /opt/unetlab/addons/qemu/mikrotik-6.46.7

wget https://download.mikrotik.com/routeros/6.46.7/chr-6.46.7.vmdk

mikrotik_image=`ls`

/opt/qemu/bin/qemu-img convert -f vmdk -O qcow2 $mikrotik_image hda.qcow2

/opt/unetlab/wrappers/unl_wrapper -a fixpermissions

exit 0
