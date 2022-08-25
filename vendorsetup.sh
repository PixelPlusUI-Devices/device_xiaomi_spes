# ROM source patches

color="\033[0;32m"
end="\033[0m"

echo -e "${color}Applying patches${end}"
sleep 1

# Remove pixel headers to avoid conflicts
rm -rf hardware/google/pixel/kernel_headers/Android.bp

# Remove hardware/xiaomi
rm -rf hardware/xiaomi

# Clone hardware/xiaomi
git clone https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi -b lineage-19.1

# Clone trees
git clone https://github.com/PixelPlusUI-Devices/vendor_xiaomi_spes vendor/xiaomi/spes
git clone https://github.com/PixelPlusUI-Devices/android_kernel_xiaomi_spes-header --depth=1 kernel/xiaomi/spes
