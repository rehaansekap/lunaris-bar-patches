# Lunaris Bar (Dynamic Island & Dynamic Bar) Unified Patch

A unified, portable patch bringing the dual status bar activity island & chip interface to modern AOSP custom ROMs (Android 15, 16, & 17).

## Features
- **Dynamic Island:** Centered punch-hole pill expanding for media controls, timers, sports live scores, incoming notifications, charging, flashlights, and biometrics.
- **Dynamic Bar:** Clock-adjacent activity chips with full isolated toggles.
- **Native Hardware GPU Blur:** Powered directly by AOSP's `viewRootImpl.createBackgroundBlurDrawable()` without proprietary vendor library dependencies (`axion-sdk`).
- **Coordinated Heads-Up System:** Auto-disables floating heads-up notifications when Island/Bar notification alerts are active to prevent UI overlap, and restores it when disabled.
- **In-App Attributions:** Dedicated credits section across all Settings sub-pages.

## Credits & Acknowledgments
- **Original Concept & Architecture:** [Lunaris-AOSP](https://github.com/Lunaris-AOSP) and AxionOS development teams.
- **Porting, Modernization & Maintenance:** [Raihan Syeka Pramukastie (rehanseekap)](https://github.com/rehaansekap).

## How to Use

From the root of your custom ROM source tree:

```bash
git clone https://github.com/rehaansekap/lunaris-bar-patches.git vendor/my_patches/lunaris-bar
bash vendor/my_patches/lunaris-bar/apply.sh
```

Or via `local_manifest` (`.repo/local_manifests/lunaris_bar.xml`):
```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
    <project name="rehaansekap/lunaris-bar-patches" path="vendor/my_patches/lunaris-bar" remote="github" revision="main" />
</manifest>
```

To revert:
```bash
bash vendor/my_patches/lunaris-bar/revert.sh
```

## License
Licensed under the Apache License, Version 2.0.
