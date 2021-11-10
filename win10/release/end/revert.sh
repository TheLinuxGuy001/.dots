# debugging
set -x

# load variables we defined
source "/etc/libvirt/hooks/kvm.conf"

# unload vfio
modprobe -r vfio_pci
modporbe -r vfio_iommu_type1
modprobe -r vfio

# rebind vtconsoles
echo 1 > /sys/class/vtconsole/vtcon0/bind
echo 0 > /sys/class/vtconsole/vtcon1/bind

# read nvidia x config
nvidia-xconfig --query-gpu-info > /dev/null 2>&1

# bind efi framebuffer
echo efi-framebuffer.0 > /sys/bus/platform/drivers/efi-framebuffer/bind

# load nvidia
modprobe nvidia_drm
modprobe nvidia_modeset
modprobe drm_kms_helper
modprobe nvidia
modprobe drm
modprobe nvidia_uvm
modprobe i2c_nvidia_gpu

# reload xow controller service
systemctl start xow

# start dm
systemctl start lightdm.service
