![emergency_food](https://github.com/forsaken-heart24/i_dont_want_to_be_an_weirdo/blob/main/banner_images/emergency_food.png?raw=true)

# To compile (Android NDK should be present):
- Change these following variables according to the toolchain path: ANDROID_NDK_CLANG_PATH & STRIP_PATH
- Don't forget to change it, else the program won't get compiled or will have any random issues.
```
cd HorizonUX
make loader
```

# Build Errors:
- ignore the non-critical ones and drop a comment if it's critical

# Tinkering stuffs:
- look into the code and mod it in your way, if you find any bugs please do a pull-request. Thanks :D

## What Does This Do?
- This binary acts as a shell script loader.
- Since we can’t directly run shell scripts, I made this as a workaround! >3