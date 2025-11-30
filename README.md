<div align="center">

<img src="https://s3b.cashify.in/gpro/uploads/2021/07/27170028/how-to-install-twrp-recovery-without-root-on-android-cover.jpg" alt="TWRP Recovery" style="width:100%; max-width:800px; height:auto; margin-bottom:20px;"/>

<div align="center">

<img src="https://capsule-render.vercel.app/api?type=transparent&fontColor=2196F3&text=TWRP%2012.1%20%E2%80%93%20INFINIX%20NOTE%2011&height=100&fontSize=50&stroke=000000&strokeWidth=2&fontAlign=50&fontAlignY=50" alt="TWRP 12.1 – INFINIX NOTE 11" />

<img src="https://capsule-render.vercel.app/api?type=transparent&fontColor=2196F3&text=Custom%20Recovery%20for%20MT6769H%20/%20MT6768%20/%20Helio%20G88&height=60&fontSize=28&stroke=000000&strokeWidth=1&fontAlign=50&fontAlignY=50" alt="Custom Recovery for MT6769H / MT6768 / Helio G88" />

</div>

A clean, optimized, and fully-functional TWRP 12.1 recovery for the Infinix Note 11 (X663).  
Built with stability, decryption support, and modern dynamic partition handling.

---

<div align="center">
<img src="https://capsule-render.vercel.app/api?type=transparent&fontColor=2196F3&text=Device%20Information&height=80&fontSize=40&stroke=000000&strokeWidth=1&fontAlign=50&fontAlignY=50" alt="Device Information" />
</div>

| Specification | Image |
|:-------------:|:-----:|
| **Device Name:** Infinix Note 11<br>**Model:** X663<br>**Chipset:** MediaTek Helio G88 (MT6769H / MT6768)<br>**Android Versions:** 12<br>**Partitions:** Dynamic (super.img)<br>**Recovery:** Boot → Recovery (no dedicated recovery partition) | <img src="https://welectronics.com/images/stories/virtuemart/product/InfinixNote11blk3.jpg" alt="Infinix Note 11" style="width:100%; max-width:260px; height:auto;"/> |

---

<div align="center">
<img src="https://capsule-render.vercel.app/api?type=transparent&fontColor=2196F3&text=Feature%20Status&height=80&fontSize=40&stroke=000000&strokeWidth=1&fontAlign=50&fontAlignY=50" alt="Feature Status" />
</div>

### <img src="https://capsule-render.vercel.app/api?type=transparent&fontColor=2196F3&text=Working&height=60&fontSize=30&stroke=000000&strokeWidth=1&fontAlign=50&fontAlignY=50" alt="Working" />

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

### <img src="https://capsule-render.vercel.app/api?type=transparent&fontColor=2196F3&text=Not%20Working&height=60&fontSize=30&stroke=000000&strokeWidth=1&fontAlign=50&fontAlignY=50" alt="Not Working" />

| Feature | Status |
|:----------------------------:|:----------------:|
| None | ![❌](https://img.shields.io/badge/-Not%20Working-red) |

### <img src="https://capsule-render.vercel.app/api?type=transparent&fontColor=2196F3&text=Not%20Tested%20/%20WIP&height=60&fontSize=30&stroke=000000&strokeWidth=1&fontAlign=50&fontAlignY=50" alt="Not Tested / WIP" />

| Feature | Status |
|:----------------------------:|:----------------:|
| USB OTG | ![❓](https://img.shields.io/badge/-WIP-yellow) |
| Flashing GSI | ![❓](https://img.shields.io/badge/-WIP-yellow) |

---

<div align="center">
<img src="https://capsule-render.vercel.app/api?type=transparent&fontColor=2196F3&text=How%20to%20Build&height=80&fontSize=40&stroke=000000&strokeWidth=1&fontAlign=50&fontAlignY=50" alt="How to Build" />
</div>
</div>

<br>

```bash
git clone https://github.com/ALBINsRAJ2025/recovery_device_infinix_Infinix-X663 -b twrp12.1-fw-v363 device/infinix/Infinix-X663
. build/envsetup.sh
lunch twrp_X663-eng
mka bootimage
