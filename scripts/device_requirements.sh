#!/bin/bash

set_requirements() {
rm -rf vendor/lineage
git clone --depth=1 https://github.com/topnotchfreaks/android_vendor_lineage -b lineage-20.0 vendor/lineage


# Clone Topaz/Tapas Trees
git clone --depth=1 https://github.com/topnotchfreaks/device_xiaomi_topaz -b lineage-20 device/xiaomi/topaz
git clone --depth=1 https://github.com/topnotchfreaks/vendor_xiaomi_topaz -b lineage-20 vendor/xiaomi/topaz
git clone --depth=1 https://github.com/topnotchfreaks/device_xiaomi_topaz-kernel -b lineage-20 device/xiaomi/topaz-kernel

# Clone required files
git clone --depth=1 https://github.com/topnotchfreaks/hardware_qcom-caf_sm6225 -b lineage-20.0 hardware/qcom-caf/sm6225

# Clone Hardware_xiaomi
rm -rf hardware/xiaomi
git clone --depth=1 https://github.com/topnotchfreaks/android_hardware_xiaomi -b lineage-20 hardware/xiaomi
}

set_requirements
echo "Device requirements set successfully."
