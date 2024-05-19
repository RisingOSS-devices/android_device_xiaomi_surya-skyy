# Hardware
HW="hardware/xiaomi"
if [ -d "$HW" ]; then
    rm -rf "$HW"
    git clone -q https://github.com/LineageOS/android_hardware_xiaomi.git -b lineage-21 hardware/xiaomi
else
    echo -e "\nCloning ${HW} failed"
fi

# Vendor
git clone -q https://github.com/HinohArata/surya_vendor.git vendor/xiaomi/surya

# Kernel
git clone -q --depth=1 https://github.com/HinohArata/surya_kernel.git -b main kernel/xiaomi/surya

# Firmware
git clone -q https://gitlab.com/HinohArata/firmware_xiaomi_surya.git firmware/xiaomi/surya

# MiuiCamera
git clone -q https://gitlab.com/HinohArata/vendor_xiaomi_surya-miuicamera.git -b leica vendor/xiaomi/camera

# Parts
WORK_DIR="$(pwd)"
DT="device/xiaomi/surya"
if [ -d "$DT" ]; then
    cd "$DT"; rm -rf parts
    if git clone -q https://github.com/HinohArata/parts; then
        echo -e "\nCloning new XiaomiParts success"
    fi
    cd "$WORK_DIR"
else
    echo -e "\nCan't clone new XiaomiParts"
    cd "$WORK_DIR"
    exit 1
fi