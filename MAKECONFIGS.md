# Custom ROM Build Configuration Variables

## Device Name & Setup
- **CUSTOM_SETUP_WELCOME_MESSAGE**: Customizes the device name in the "About" section without affecting the real brand. Requires `TARGET_INCLUDE_CUSTOM_SETUP_WELCOME_MESSAGES` set to true.
- **TARGET_INCLUDE_CUSTOM_SETUP_WELCOME_MESSAGES**: Enables custom welcome message during setup.

## Screen & Refresh Rate
- **BUILD_TARGET_DEFAULT_SCREEN_REFRESH_RATE**: Sets the default refresh rate (recommend 60Hz).
- **BUILD_TARGET_HAS_HIGH_REFRESH_RATE_MODES**: Toggles high refresh rate modes based on the default rate.

## Debugging & Performance
- **TARGET_BUILD_IS_FOR_DEBUGGING**: Enables verbose logging for debugging, which impacts performance.
- **TARGET_FLOATING_FEATURE_ENABLE_ENHANCED_PROCESSING**: Tries to boost performance at the cost of overheating and battery life.

## Security
- **TARGET_REMOVE_NONE_SECURITY_OPTION**: Disables the "none" option for lock screen security.
- **TARGET_REMOVE_SWIPE_SECURITY_OPTION**: Disables the swipe-to-unlock option.

## Bloatware & Features
- **TARGET_REMOVE_USELESS_VENDOR_STUFFS**: Removes bloat from the vendor partition.
- **TARGET_REMOVE_SAMSUNG_APPLICATIONS_STUFFS**: Removes unnecessary Samsung apps (note: Android 9 is not fully supported).
- **TARGET_ADD_EXTRA_ANIMATION_SCALES**: Adds extra animation scales for customization.
- **TARGET_FLOATING_FEATURE_DISABLE_BLUR_EFFECTS**: Disables blur effects for better performance and battery life.

## Special Features
- **TARGET_INCLUDE_FASTBOOTD_PATCH_BY_RATCODED**: Adds fastbootd support to stock recovery.
- **TARGET_INCLUDE_UNLIMITED_BACKUP**: Enables unlimited backup for certain apps.
- **TARGET_INCLUDE_SAMSUNG_THEMING_MODULES**: Installs patched Samsung Goodlock modules.

## Audio & Display
- **TARGET_INCLUDE_HORIZON_AUDIO_RESAMPLER**: Fixes LDAC audio distortion for lower-end Bluetooth devices.
- **DISABLE_DISPLAY_REFRESH_RATE_OVERRIDE**: Disables refresh rate override during media playback.

## Additional Customization
- **TARGET_FLOATING_FEATURE_LAUNCHER_CONFIG_ANIMATION_TYPE**: Adjusts launcher animation for different performance tiers (LowEnd, HighEnd, etc.).
- **CUSTOM_WALLPAPER_RES_JSON_GENERATOR**: Adds multiple wallpapers with ease.
- **TARGET_FLOATING_FEATURE_SUPPORTS_WIRELESS_POWER_SHARING**: Enables wireless power sharing if supported by hardware.

## Language & Locale
- **SWITCH_DEFAULT_LANGUAGE_ON_PRODUCT_BUILD**: Sets default language and region for the first boot.

---

This script allows deep customization of your customized OneUI ROM, from performance tweaks to aesthetic changes. Make sure to enable only the features you need! Enjoy building your custom ROM! 😊

**Be sure to give the credits lah!**