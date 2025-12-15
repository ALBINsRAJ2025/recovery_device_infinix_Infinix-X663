# Infinix Note 11 X663 OrangeFox Recovery Device Tree

Custom OFOX (OrangeFox Recovery) for Infinix Note 11 (X663).

## Device Specifications

| Spec | Details |
|------|---------|
| **Device** | Infinix Note 11 |
| **Model** | X663 |
| **Manufacturer** | Infinix Mobility |
| **SoC** | MediaTek Helio G88 |
| **RAM** | 4GB / 6GB |
| **Storage** | 64GB / 128GB |
| **Display** | 6.7" IPS AMOLED, 60Hz |
| **Battery** | 5000 mAh |
| **OS** | Android 12 |

![Infinix Note 11 X663](https://www.gizmochina.com/wp-content/uploads/2021/12/Infinix-Note-11-Featured-A.jpg)

---

## Features

- ✅ Android 12 based TWRP
- ✅ Full decryption support (with/without password)
- ✅ Vibration support
- ✅ Brightness control
- ✅ Complete backup and restore functionality
- ✅ ROM flashing support
- ✅ Kernel flashing support
- ✅ System modification support
- ✅ Built from official TWRP source
- ✅ All OFOX Addons and features working


---

## Requirements

- Bootloader must be unlocked
- Must be on firmware: v363
- Boot partition: 96MB (recommended via repartitioner) → [📥 Download Repartitioner](https://t.me/x663development/16)
- Old TWRP → [📥 Download Old TWRP](https://t.me/x663development/9)
- Skip these if you already repartitioned and on new TWRP

---

## Installation

### Prerequisites
```bash
- Bootloader unlocked
- Old TWRP installed and Repartitioned
- USB cable
- Firmware v363
```

### Steps

1. **Boot into current recovery**
   ```
   Power off → Hold Volume Up + Power
   ```
2. **(Optional) Flash repartitioner zip**
   - Only if boot partition not at 96MB
   - Select Install → repartitioner zip
   - Swipe to confirm
   - Reboot to recovery

3. **Flash OrangeFox boot image**
   - Select Install
   - Choose OrangeFox Recovery.img flash to boot or recovery ramdisk
   - Swipe to confirm
   - Wait for completion
   - Then reboot to OFOX Recovery and Flash OrangeFox Recovery zip

4. **Reboot to recovery**
   - Select Reboot → Recovery
   - Device reboots into OrangeFox Recovery



✅ **OrangeFox is ready for use!**

---

## Decryption

OrangeFox supports full decryption:

- **With Password:** Provide device PIN/password when prompted
- **Without Password:** Automatic decryption without input
- Full file system access for backup and modification

---

## Usage

### Flashing ROMs
1. Boot into OrangeFox recovery
2. Wipe (optional)
3. Select Install
4. Choose ROM zip file
5. Swipe to confirm
6. Reboot to system

### Flashing Kernels
1. Boot into OrangeFox
2. Install → Select kernel zip
3. Swipe to confirm
4. Reboot

### Backup
1. Backup → Select partitions
2. Choose backup destination
3. Swipe to confirm

### Restore
1. Restore → Select backup
2. Choose partitions to restore
3. Swipe to confirm

---

## Build Information

- **Base:** TWRP Source (https://github.com/TeamWin/android_bootable_recovery)
- **Device Tree:** Custom for X663
- **Android Version:** 12
- **Build Type:** Full featured release

## Known Issues / Limitations

Currently, no known major issues. All features tested and working.

**Report issues with:**
- Device model: X663
- Firmware version
- Detailed description of issue
- Steps to reproduce
- Error logs (if available)

---

## Reporting Bugs

Found an issue? Please report it with:

```
Device: Infinix Note 11 X663
Firmware: v363 or higher
Issue: [Clear description]
Steps: [How to reproduce]
Logs: [If available]
```

**Built with ❤️ for X663 Community**
