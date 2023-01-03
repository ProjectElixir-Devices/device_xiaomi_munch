echo 'Starting to clone stuffs needed for your device'
# Stuffs to rm -rf
rm -rf device/xiaomi/sm8250-common
rm -rf kernel/xiaomi/sm8250-common
rm -rf vendor/xiaomi
rm -rf packages/resources/devicesettings

echo 'Cloning DT-Common tree [1/8]'
# Device Tree Common
git clone --depth=1 https://github.com/ProjectElixir-Devices/device_xiaomi_sm8250-common.git -b thirteen device/xiaomi/sm8250-common

echo 'Cloning Kernel tree [2/8]'
# Kernel Tree
git clone --depth=1 https://github.com/madmax7896/kernel_xiaomi_sm8250.git -b arrow-13.0 kernel/xiaomi/sm8250

echo 'Cloning Vendor tree [3/8]'
# Vendor Tree
git clone --depth=1 https://gitlab.com/Ar5646L/vendor_xiaomi_munch.git -b 13 vendor/xiaomi/munch

echo 'Cloning Vendor-Common tree [4/8]'
# Vendor-Common Tree
git clone --depth=1 https://github.com/Ar5646L/vendor_xiaomi_sm8250-common.git -b master vendor/xiaomi/sm8250-common

echo 'Cloning Firmware [5/8]'
# Firmware
git clone --depth=1 https://gitlab.com/Ar5646L/vendor_xiaomi_munch-firmware.git -b twelve vendor/xiaomi/munch-firmware

echo 'Cloning GcamGo [6/8]'
# GcamGo
git clone --depth=1 https://gitlab.com/Ar5646L/vendor_xiaomi_haydn-extras.git -b twelve vendor/xiaomi/haydn-extras

echo 'Cloning Device Settings [7/8]'
# Device Settings
git clone --depth=1 https://github.com/Evolution-X/packages_resources_devicesettings.git -b tiramisu packages/resources/devicesettings

echo 'Cloning Prelude Clang [8/8]'
# Prelude Clang
git clone --depth=1 https://gitlab.com/jjpprrrr/prelude-clang.git prebuilts/clang/host/linux-x86/clang-prelude