<div align="center">

<img src="https://s3b.cashify.in/gpro/uploads/2021/07/27170028/how-to-install-twrp-recovery-without-root-on-android-cover.jpg" alt="TWRP Recovery" style="width:100%; max-width:800px; height:auto; margin-bottom:20px;"/>

# 🔹 **TWRP 12.1 – INFINIX NOTE 11 (X663)** 🔹
### **Custom Recovery for MT6769H / Helio G88**

A clean, optimized, and fully-functional TWRP 12.1 recovery for the Infinix Note 11 (X663).  
Built with stability, decryption support, and modern dynamic partition handling.

---

## 📌 **Device Information**

| Specification | Image |
|:-------------:|:-----:|
| **Device Name:** Infinix Note 11<br>**Model:** X663<br>**Chipset:** MediaTek Helio G88 (MT6769H)<br>**Android Versions:** 12<br>**Partitions:** Dynamic (super.img)<br>**Recovery:** Boot → Recovery (no dedicated recovery partition) | <img src="https://welectronics.com/images/stories/virtuemart/product/InfinixNote11blk3.jpg" alt="Infinix Note 11" style="width:100%; max-width:260px; height:auto;"/> |

---

# ⭐ **Feature Status**

### 🟢 **Working**

| Feature | Status |
|:----------------------------:|:----------------:|
| Touchscreen | ![✔️](https://img.shields.io/badge/-Working-brightgreen) |
| Display Rendering | ![✔️](https://img.shields.io/badge/-Working-brightgreen) |
| Flashing ZIP/IMG | ![✔️](https://img.shields.io/badge/-Working-brightgreen) |
| Decrypt Data (With / Without Password / Lockscreen) | ![✔️](https://img.shields.io/badge/-Working-brightgreen) |
| Dynamic Partitions | ![✔️](https://img.shields.io/badge/-Working-brightgreen) |
| Slotselect Support | ![✔️](https://img.shields.io/badge/-Working-brightgreen) |
| ADB | ![✔️](https://img.shields.io/badge/-Working-brightgreen) |
| MTP | ![✔️](https://img.shields.io/badge/-Working-brightgreen) |
| Vibration | ![✔️](https://img.shields.io/badge/-Working-brightgreen) |
| Reboot Menu | ![✔️](https://img.shields.io/badge/-Working-brightgreen) |
| Backup & Restore (System / Vendor / Product / Boot / Super) | ![✔️](https://img.shields.io/badge/-Working-brightgreen) |

### 🔴 **Not Working**

| Feature | Status |
|:----------------------------:|:----------------:|
| None | ![❌](https://img.shields.io/badge/-Not%20Working-red) |

### 🟡 **Not Tested / WIP**

| Feature | Status |
|:----------------------------:|:----------------:|
| USB OTG | ![❓](https://img.shields.io/badge/-WIP-yellow) |
| Flashing GSI | ![❓](https://img.shields.io/badge/-WIP-yellow) |

---

## 🔧 **How to Build**

```bash
git clone https://github.com/ALBINsRAJ2025/recovery_device_infinix_X663 -b 12.1 device/infinix/X663
. build/envsetup.sh
lunch twrp_X663-eng
mka recoveryimage
