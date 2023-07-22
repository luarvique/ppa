# OpenWebRX+ Package Repository

#### [RaspberryPi Images](#if-you-have-raspberrypi-4-and-no-clue-) | [Docker Images](#if-you-are-using-docker-) | [Upgrades](#if-you-already-have-openwebrx-installed-) | [Ubuntu Installs](#if-you-are-an-ubuntu-user-) | [Debian Installs](#if-you-are-a-debian-user-) | [SDRPlay Driver](#if-you-have-an-sdrplay-device-or-clone-)

__You can discuss OpenWebRX+ features, problems, get news and support in the [OpenWebRX Telegram channel](https://t.me/openwebrx) and [its chat](https://t.me/openwebrx_chat).__

This is the package repository for the improved version of the OpenWebRX online SDR. The new and original features available in this version of OpenWebRX:
* Built-in FAX, SSTV, AIS, FLEX, POCSAG, HFDL, ISM, CW, RTTY, and SAM decoders.
* Built-in DTMF, EEA, EIA, CCIR, and several ZVEY SELCALL decoders.
* Built-in MP3 recorder for received audio.
* Built-in scanner.
* Background SSTV and FAX decoding with the browser for received images.
* Adjustable noise filtering based on spectral subtraction.
* Adjustable tuning step.
* Improved touch screen operation, with panning and zooming.
* Improved scroll wheel support, with tuning and zooming.
* Improved tuning in CW mode.
* Bandpass filter adjustable with scroll wheel.
* More reliable SDRPlay devices operation.
* Map shows other pulbic web SDRs from all around the world.
* Better map information, with distances, APRS paths, weather, etc.
* Configurable session timeout, with a policy page.
* HTTPS protocol support (requires SSL certificate).
* Foldable receiver panel with configurable opacity.
* Spectrum display.

This repository contains packages for the following Linux distributions:
* Ubuntu 22.04 (Jammy Jellyfish) for amd64, arm64 architectures
* Debian 11 (Bullseye) for amd64, arm64, armhf architectures

# If you have RaspberryPi 4 and no clue ...
Jochen (DC9DD) has built an [SD card image for RaspberryPi 4](https://github.com/luarvique/openwebrx/releases/), containing a clean OpenWebRX+ installation. The same image has been reported to work on RaspberryPi 3 and PiZero 2 as well. The Linux user name is "pi" and the password is "raspberry". When accessing OpenWebRX+ Settings page, the user name is "admin" and the password is "raspberry". __Make sure you change these passwords__ immediately after booting the image for the first time. Please, keep in mind that __this may not be the latest version__ of OpenWebRX+. Read on for the latest version.

# If you are using Docker ...
Stanislav (LZ2SLL) has made two OpenWebRX+ Docker images that should run on any x64 PC. The [nightly image](https://hub.docker.com/r/slechev/openwebrxplus-nightly) is updated daily and based on the latest OpenWebRX+ sources. The [versioned image](https://hub.docker.com/r/slechev/openwebrxplus) is based on the latest published OpenWebRX+ packages and should be identical to a normal OpenWebRX+ installation on Debian. The versioned image is somewhat bigger in size, but is also more stable.

# If you already have OpenWebRX+ installed ...

In order to **upgrade from a previous OpenWebRX+** version, do the following, **as root**:

    apt update
    apt upgrade

# If you are an Ubuntu user ...

In order to add this repository to your **Ubuntu** system, do the following, **as root**:

    wget -O - https://luarvique.github.io/ppa/openwebrx-plus.gpg | gpg --dearmor -o /etc/apt/trusted.gpg.d/openwebrx-plus.gpg
    echo "deb [signed-by=/etc/apt/trusted.gpg.d/openwebrx-plus.gpg] https://luarvique.github.io/ppa/ubuntu ./" > /etc/apt/sources.list.d/openwebrx-plus.list
    apt update

You should also have the original OpenWebRX repository added, since it contains some necessary packages. In order to add the original OpenWebRX repository to your **Ubuntu** system, do the following, **as root**:

    wget -O - https://repo.openwebrx.de/debian/key.gpg.txt | gpg --dearmor -o /usr/share/keyrings/openwebrx.gpg
    echo "deb [signed-by=/usr/share/keyrings/openwebrx.gpg] https://repo.openwebrx.de/ubuntu/ jammy main" > /etc/apt/sources.list.d/openwebrx.list
    apt update

# If you are a Debian user ...

In order to add this repository to your **Debian** system, do the following, **as root**:

    wget -O - https://luarvique.github.io/ppa/openwebrx-plus.gpg | gpg --dearmor -o /etc/apt/trusted.gpg.d/openwebrx-plus.gpg
    echo "deb [signed-by=/etc/apt/trusted.gpg.d/openwebrx-plus.gpg] https://luarvique.github.io/ppa/debian ./" > /etc/apt/sources.list.d/openwebrx-plus.list
    apt update

You should also have the original OpenWebRX repository added, since it contains some necessary packages. In order to add the original OpenWebRX repository to your **Debian** system, do the following, **as root**:

    wget -O - https://repo.openwebrx.de/debian/key.gpg.txt | gpg --dearmor -o /usr/share/keyrings/openwebrx.gpg
    echo "deb [signed-by=/usr/share/keyrings/openwebrx.gpg] https://repo.openwebrx.de/debian/ bullseye main" > /etc/apt/sources.list.d/openwebrx.list
    apt update

# ... and, finally, ...

Finally, in order to install OpenWebRX+, do the following, **as root**:

    apt install openwebrx

To make sure OpenWebRX+ is running, direct your local web browser to the following address:

    http://localhost:8073/
    
You should see the OpenWebRX+ web interface, with the noise filter (NR) and tuning step (>-<) controls.

# If you have an SDRPlay device or clone ...

This repository offers the **improved SoapySDRPlay3 device driver** with the following changes from the original version:
* Fixed generic gain control, limiting it to the IFGR setting.
* Made RFGR setting a separate, optional prameter named "rf_gain".
* Fixed frequency correction (ppm) parameter.
* Fixed problems when switching from LIF to wideband ZIF mode.
* Fixed deadlocks when sending settings to the device.
* Added multiple retries when device does not accept a setting.
* Widened filters a little bit, reducing the "hump" size for most bandwidths.
* Added 1.536MHz bandwidth.

In order to install the improved SoapySDRPlay3 package, do the following, **as root**:

    apt install soapysdr-module-sdrplay3

During installation, the SoapySDRPlay3 package should also install the latest SoapySDR and remove all locally built SoapySDR files from /usr/local. **You will still need to download and install SDRPlay API** from this page:

    https://www.sdrplay.com/dlfinishs/
