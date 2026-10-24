# Infinix X663 TWRP device-tree notes

This repository is configured for an A/B, dynamic-partition MT6768 device and uses:

- first-stage mount + logical partitions for `system`, `vendor`, `product`, `system_ext` (`recovery/root/first_stage_ramdisk/fstab.mt6768`)
- super partition flashing entry (`recovery/root/system/etc/recovery.fstab`, `recovery/root/system/etc/twrp.flags`)
- metadata-backed FBE flags (`fileencryption=...`, `keydirectory=/metadata/vold/metadata_encryption`) and recovery keymaster/gatekeeper services (`recovery/root/init.recovery.mt6768.rc`, `recovery/root/tee.rc`)

## Verified partition mappings in this tree

From `recovery/root/system/etc/recovery.fstab`:

- boot images: `/boot`, `/vendor_boot`, `/dtbo`
- AVB: `/vbmeta`, `/vbmeta_system`, `/vbmeta_vendor`
- dynamic container: `/super`
- logical mapper entries in flags: `/dev/block/mapper/system|vendor|system_ext|product`
- userdata/metadata: `/data` (f2fs), `/metadata` (ext4)

## Current limitations / unverified points

- This tree does **not** include `init_boot` handling because no `init_boot` partition mapping is present in the repository metadata/fstab.
- Decryption success depends on device-specific vendor/TEE blobs and matching Android build environment; this tree now only references Trustonic registry blobs that are actually present in-repo.
- OTA partition aliasing for some MTK firmware partitions (`gz*`, `scp*`, `sspm*`, `tee*`) should be validated against stock payload metadata before changing partition names.

## Validation checklist used for these configs

1. Confirm every `/vendor/app/mcRegistry/*.drbin` referenced by `tee.rc` exists in `recovery/root/vendor/app/mcRegistry`.
2. Confirm recovery init service names match `start/stop` commands.
3. Confirm `twrp.flags` entries do not reference non-existent by-name partitions.
4. Recheck fstab and flags after edits before flashing.
