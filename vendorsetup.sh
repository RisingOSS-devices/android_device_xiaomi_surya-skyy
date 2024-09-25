# Fixing DT2W
HW=hardware/xiaomi
POWER=hardware/lineage/interfaces/power-libperfmgr/aidl

if [ -f "$POWER/Power.cpp" ]; then
    echo -e "Fixing DT2W"
    sleep 2
    echo "Power.cpp found! Removing now..."
    if rm -rf $POWER/Power.cpp; then
        echo "Removing Power.cpp success! Copying modified Power.cpp now..."
        if cp -rf $HW/power/Power.cpp $POWER; then
            echo "Copying succesfull"
            rm -rf $HW/vendorsetup.sh
        else
            echo "Copying failed"
        fi
    else
        echo "Removing Power.cpp failed!"
    fi
fi