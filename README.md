📱 TWRP 12.1 – Infinix Note 11 (X663)
Custom Recovery for MT6769H / Helio G88

A clean, optimized, and fully-functional TWRP 12.1 recovery for the Infinix Note 11 (X663).
Built with stability, decryption support, and modern dynamic-partition handling.

✅ Device Information
Property	Value
Device Name	Infinix Note 11
Model	X663
Chipset	MediaTek Helio G88 (MT6769H)
Android Version	11 / 12
Partitions	Dynamic (super.img)
Recovery	No dedicated recovery partition (boot → recovery)

⭐ Feature Status
🟢 Working
Feature	Status
Touchscreen	✔️
Display Rendering	✔️
Dynamic Partitions	✔️
Slotselect Support	✔️
ADB	✔️
MTP	✔️
Vibration	✔️
Reboot Menu	✔️
Backup & Restore (APEX, Vendor, System, Product, etc.)	✔️
Prebuilt Kernel + DTB Booting	✔️
fstab Configuration (metadata, userdata flags)	✔️
🔴 Not Working
Feature	Status
FastbootD	❌
Haptics in some menus (rare)	❌
Some MTK encryption edge-cases	❌
🟡 Not Tested / WIP
Feature	Status
USB OTG	❓
External SDCard Backup/Restore	❓
Decryption on OTA-updated Android 12 builds	❓
Rooted Environment Backups	❓
🔧 How to Build
git clone https://github.com/ALBINsRAJ2025/recovery_device_infinix_X663 -b 12.1 device/infinix/X663
. build/envsetup.sh
lunch twrp_X663-eng
mka recoveryimage
