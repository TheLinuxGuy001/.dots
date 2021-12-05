# debugging
set -x

# load variables we defined
source "/etc/libvirt/hooks/kvm.conf"

# stop dm
systemctl stop lightdm.service

# unbind vtconsoles
echo 0 > /sys/class/vtconsole/vtcon0/bind
echo 0 > /sys/class/vtconsole/vtcon1/bind

#unbind efi framebuffer
echo efi-framebuffer.0 > /sys/bus/platform/drivers/efi-framebuffer/unbind

# avoid race
sleep 5

# unload nvidia
modprobe -r nvidia_drm
modprobe -r nvidia_modeset
modprobe -r drm_kms_helper
modprobe -r nvidia
modprobe -r i2c_nvidia_gpu
modprobe -r drm
modprobe -r nvidia-uvm

# stop xow controller service
systemctl stop xow

# load vfio
modprobe vfio
modprobe vfio_pci
modprobe vfio_iommu_type1

# isolate threads
systemctl set-property --runtime -- user.slice AllowedCPUs=7,15
systemctl set-property --runtime -- system.slice AllowedCPUs=7,15
systemctl set-property --runtime -- init.scope AllowedCPUs=7,15

# set profile to virtual-host
tuned-adm profile virtual-host