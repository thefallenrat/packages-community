# mhwd-addon-amdgfx-hwe
... provides easy to use scripts for "MHWD" to install the full set of features provided by mesa

## usage
in Manjaro you can simply install it via pacman
```
sudo pacman -S mhwd-addon-amdgfx-hwe
```
when done, you can run `mhwd` or sone graphical frontend, like KDE systemsettings or manjaro-settings-manager.
Here you will find some options, like
* video-catalyst
* video-ati
* video-amdgpu
* video-vesa
* video-radeon+
* video-amdgpu+
* video-amdgpu-experimental+

video-vesa, video-amdgpu, video-ati, video-catalyst are provided by manjaro itself. they are useless for us ;) Make sure you uninstall them befor trying the others, otherwise it will simply not work.

##### **!!!attention!!!**
if you are using *video-catalyst* you need to uninstall this via Manjaro Settings Manager & install xserver 1.18. 
```
pkexec mhwd -r pci video-catalyst
sudo pacman -S xorg-server>=1.18 xf86-input-libinput
```
Otherwise you will not be able to switch to the new graphicsstack.

## whats the best driver?
at first. these are no drivers, but installation scripts that install and configure drivers for you.


MHWD-Script | Generation | Linux | Kernelmodule | Xorg-Videodriver | Mesa | OpenGL | OpenGL ES | Videodecoding | Vulkan | Wayland | HDMI-Audio
----------- | ---------- | ----- | ------------ | ---------------- | ---- | ------ | --------- | ------------- | ------ | ------- | ----------
video-ati | <=GCN 1.1 | all | Radeon | ati(radeon) | ??² | >=4.3² | ??² | No | No | Yes | Yes²
video-amdgpu | >=GCN 1.2 | >= 4.6 | AMDGPU | AMDGPU | >=13.x(RadeonSI) | 4.3 | 3.1 | No | No | Yes | No
video-radeon+ | <=GCN 1.1 | all | Radeon | ati(radeon) | ??² | >=4.3² | ??² | VAAPI, VDPAU | No | Yes | Yes
video-amdgpu-experimental+¹ | GCN 1.1 | >= 4.6 | AMDGPU | AMDGPU | >=13.x(RadeonSI) | 4.3 | 3.1 | VAAPI, VDPAU | RadV | Yes | No
video-amdgpu-experimental+¹ | GCN 1.0 | >= 4.9 | AMDGPU | AMDGPU | >=13.x(RadeonSI) | 4.3 | 3.1 | VAAPI, VDPAU | RadV | Yes | No
video-amdgpu+ | >=GCN 1.2 | >= 4.6 | AMDGPU | AMDGPU | >=13.x(RadeonSI) | 4.3 | 3.1 | VAAPI, VDPAU | RadV | Yes | No

 ¹ Experimental means that it could destroy your system
 ² Depends on your graphicscard generation

## Tools
[radeonjet](https://github.com/p4block/radeonjet) let you use OverDrive for AMDGPU. Be carefull, this might destroy your hardware

## HELP!
You will find help in the [Manjaro Forums](https://forum.manjaro.org/t/amdgpu-improvements-for-manjaro/7890/439) :)
