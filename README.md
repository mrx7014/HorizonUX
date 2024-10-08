![HorizonUX Banner](https://github.com/forsaken-heart24/HorizonUX/blob/main/banner_images/HorizonUX.png?raw=true)

# ⭐ HorizonUX

**What’s poppin’, fam? Welcome to the wild world of HorizonUX!**

- **Just a Lil’ Reminder**: That cute Genshin Impact character "Paimon"? Not mine, just some fire fan art I found on Google Images. Mad respect to the artist! 🎨✨

- **What’s the 411?**: I’m out here trying to whip up some ultra-custom Samsung One UI vibes! This is an open-source adventure, still in the oven, so keep your eyes peeled for some spicy updates! 🔥🚀

- **Keep It Real**: If you snag any of my goodies, just make sure to keep it open source and hit me up with some credit! Sharing is caring, y’all! 🤗💯

Thanks for dropping by! You’re a total legend! 💖✨

# Building with this source, still not finished.
- Bring Unlimited photos backup.
```
make unlimited-photo-backups
```

- Remove some useless stuffs from the vendor.
```
make remove-useless-vendor-things
```

- Disable USB Debugging Authorization: 
> [!NOTE]  
> - This will leave your data be stolen or anything could happen, the builder shouldn't publish their rom
> - without changing these into the default value.
```
make disable-debugging-authorization
```

# Device Specific Things:
- Fixes the system overlay.
```
make a30-cutout
```

- Bluetooth Patcher, use this if bluetooth is not working properly.
```
make bluetooth-library-patcher
```

# Custom HorizonUX things (still in development):
- Enables rounded corners on pip window
```
make custom-horizonux-pip-rounded-corners-enabler-overlay
```

- Removes none security type and adds more animation scalling options.
```
make custom-horizonux-remove-none-security-type-and-add-animations-scale
```

- Custom HorizonUX welcome message after finishing setup:
```
make custom-horizonux-setup-wizard-overlay
```

- Modified version of <a href="https://github.com/yanndroid/screenresolution">Yanndroid's Screen resolution changer app.</a>
```
make custom-horizonux-resolution-app-builder
```