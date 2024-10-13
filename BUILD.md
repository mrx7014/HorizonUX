# Small disclaimer!
- The <a href="https://github.com/yanndroid/screenresolution">Yanndroid's</a> Screen resolution changer app and the <a href="https://github.com/salvogiangri">Salvo sir's</a> UN1CA Updater app is not included in the license, though it doesn't
mean that you can use it without open-source'ing your ROM

# Device Specific Things:
- Fixes the system overlay for the Samsung Galaxy A30
```
make a30-cutout
```

- Fixes the system overlay for the Samsung Galaxy S20
```
make s20-cutout
```

- Bluetooth Patcher, use this if bluetooth is not working properly.
```
make bluetooth-library-patcher
```

# Stuffs to include in your rom, still not finished.
> [!NOTE]  
> - You must open-source your rom if you want to use any of my / other's content(s) from here.
- Brings Unlimited photos backup.
```
make unlimited-photo-backups
```

- Removes some useless stuffs from the vendor.
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

- Custom HorizonUX default wallpapers customizer tool:
```
make custom-horizonux-wallpaper-maker
```

# Some かわいい stuffs from other developers:
- Modified version of <a href="https://github.com/yanndroid/screenresolution">Yanndroid's</a> Screen resolution changer app.
```
make custom-horizonux-resolution-app-builder
```

- Modified version of <a href="https://github.com/salvogiangri">Salvo sir's</a> UN1CA Updater app.
```
make custom-horizonux-unica-updater
```