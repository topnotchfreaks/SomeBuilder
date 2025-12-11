#!/bin/bash

set_requirements() {
rm -rf vendor/lineage
git clone --depth=1 https://github.com/topnotchfreaks/android_vendor_lineage -b lineage-20.0 vendor/lineage
}

set_requirements
echo "Device requirements set successfully."
