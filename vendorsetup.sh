# Hardware
HW="hardware/xiaomi"
if ! [ -d "$HW" ]; then
    echo "$HW not found! Cloning now..."
    if ! git clone -q https://github.com/LineageOS/android_hardware_xiaomi.git -b lineage-21 "$HW"; then
        echo "Cloning failed! Aborting...\n"
    fi
fi

# Vendor
VT="vendor/xiaomi/surya"
if ! [ -d "$VT" ]; then
    echo "$VT not found! Cloning now..."
    if ! git clone -q https://github.com/HinohArata/surya_vendor.git -b 14 "$VT"; then
        echo "Cloning failed! Aborting...\n"
        exit 1
    fi
fi

# Kernel
KT="kernel/xiaomi/surya"
if ! [ -d "$KT" ]; then
    echo "$KT not found! Cloning now..."
    if ! git clone -q https://github.com/HinohArata/kernel-4.14 -b claire "$KERNEL"; then
        echo "Cloning failed! Aborting...\n"
        exit 1
    fi
fi

# Firmware
FW="firmware/xiaomi/surya"
if ! [ -d "$FW" ]; then
    echo "$FW not found! Cloning now..."
    if ! git clone -q https://gitlab.com/HinohArata/firmware_xiaomi_surya.git "$FW"; then
        echo "Cloning failed! Aborting...\n"
        exit 1
    fi
fi

# MiuiCamera
CAM="vendor/xiaomi/camera"
if ! [ -d "$CAM" ]; then
    echo "$CAM not found! Cloning now..."
    if ! git clone -q https://github.com/hinohArata/vendor_xiaomi_camera.git -b 14 "$CAM"; then
        echo "Cloning failed! Aborting...\n"
    fi
fi

# Part
PART="device/xiaomi/surya/parts"
if ! [ -d "$PART" ]; then
    echo "$PART not found! Cloning now..."
    if ! git clone -q https://github.com/hinohArata/parts.git -b qpr3 "$PART"; then
        echo "Cloning failed! Aborting...\n"
    fi
fi