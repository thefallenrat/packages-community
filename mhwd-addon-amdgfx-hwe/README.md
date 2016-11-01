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
* video-ati-mesa-extras
* video-amdgpu-mesa-extras
* video-amdgpu-experimental-mesa-extras

video-vesa, video-amdgpu, video-ati, video-catalyst are provided by manjaro itself. they are useless for us ;) Make sure you uninstall them befor trying the others, otherwise it will simply not work.

##### **!!!attention!!!**
if you are using *video-catalyst* it's recommended to re-install Manjaro. Because there is no easy/save way to uninstall this driver.

## whats the best driver?
at first. these are no drivers, but installation scripts that install and configure drivers for you.


### video-ati-mesa-extras
Dependency | Minimum
---------- | -------
Kernelmodule | radeon
Xorg-Videodriver | ati(radeon)
Mesa | 13

Feature | Provider
------- | --------
OpenGL | up to 4.3
Vulkan | no
Videodecoding | VAAPI,VDPAU
OpenCL | 1.2

### video-amdgpu-mesa-extras
Dependency | Minimum
---------- | -------
GCN 1.2 | Linux >= 4.4
GCN 4 | Linux >= 4.8
Kernelmodule | amdgpu
Xorg-Videodriver | amdgpu
Mesa | 13

Feature | Provider
------- | --------
OpenGL | 4.3
Vulkan | RadV
Videodecoding | VAAPI,VDPAU
OpenCL | 1.2

### video-amdgpu-experimental-mesa-extras
Dependency | Minimum
---------- | -------
GCN 1.1 | Linux >= 4.6
GCN 1.0 | Linux >= 4.9
Kernelmodule | amdgpu
Xorg-Videodriver | amdgpu
Mesa | 13

Feature | Provider
------- | --------
OpenGL | 4.3
Vulkan | RadV
Videodecoding | VAAPI,VDPAU
OpenCL | 1.2

## Tools
`odamdgpu` let you use OverDrive for AMDGPU. Be carefull, this might destroy your hardware and it will be only your fault!

### usage
```
odamdgpu <operation>
```
If you want to "overdrive" your core GPU by 5% and you VMemory by 3% you can do this
```
odamdgpu -c 3 -m 5
```
you can always reset to the standard by using
```
odamdgpu -r
```

## HELP!
You will find help in the [Manjaro Forums](https://forum.manjaro.org/t/amdgpu-improvements-for-manjaro/7890/439) :)
