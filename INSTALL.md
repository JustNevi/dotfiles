# Groups

```
sudo usermod -aG audio,video,input,network,storage,bluetooth ${USER}
```

# Brightness

`brightnessctl`

In `/etc/udev/rules.d/90-brightnessctl.rules` add:

```
ACTION=="add", SUBSYSTEM=="backlight", RUN+="/bin/chgrp video /sys/class/backlight/%k/brightness"
ACTION=="add", SUBSYSTEM=="backlight", RUN+="/bin/chmod g+w /sys/class/backlight/%k/brightness"
```

Add user to video group:

```
sudo usermod -aG video ${USER}
```

and reboot

# Pipewire

https://docs.voidlinux.org/config/media/pipewire.html
