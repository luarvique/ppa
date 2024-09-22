# OpenWebRX+ Package Repository

#### [RaspberryPi Images](#if-you-have-raspberrypi-4-and-no-clue-) | [Docker Images](#if-you-are-using-docker-) | [Upgrades](#if-you-already-have-openwebrx-installed-) | [Ubuntu Installs](#if-you-are-an-ubuntu-2204-user-) | [Debian Installs](#if-you-are-a-debian-bullseye-user-) | [SDRPlay Driver](#if-you-have-an-sdrplay-device-or-clone-)

__[OpenWebRX+ documentation](https://fms.komkon.org/OWRX) draft is now available. You can discuss OpenWebRX+ features, problems, get news and support in the [OpenWebRX Telegram channel](https://t.me/openwebrx) and [its chat](https://t.me/openwebrx_chat).__

This is the package repository for the improved version of the OpenWebRX online SDR. The new and original features available in this version of OpenWebRX:
* Built-in FAX, SSTV, AIS, FLEX, POCSAG, ISM, RDS, CW, RTTY, SITOR-B, and SAM decoders.
* Built-in HFDL, VDL2, ADSB, and ACARS aviation decoders.
* Built-in DTMF, EEA, EIA, CCIR, and several ZVEY SELCALL decoders.
* Built-in chat between receiver users.
* Built-in MP3 recorder for received audio.
* Built-in scanner.
* Ability for the admin to see user connections and ban abusive users.
* Background SSTV and FAX decoding with the browser for received images.
* Adjustable noise filtering based on spectral subtraction.
* Adjustable tuning step.
* Automatically generated bookmarks for shortwave broadcasts.
* Automatically generated bookmarks for nearby HAM repeaters.
* Improved touch screen operation, with panning and zooming.
* Improved scroll wheel support, with tuning and zooming.
* Improved tuning in CW mode.
* Bandpass filter adjustable with scroll wheel.
* More reliable SDRPlay devices operation.
* Map shows other pulbic web SDRs from all around the world.
* Map shows shortwave broadcasters from all around the world.
* Map shows aircraft locations obtained by aviation decoders.
* Map shows nearby HAM repeaters.
* Better map information, with distances, APRS paths, weather, etc.
* Configurable session timeout, with a policy page.
* HTTPS protocol support (requires SSL certificate).
* Foldable receiver panel with configurable opacity.
* Spectrum display.

This repository contains packages for the following Linux distributions:
* Ubuntu 22.04 (Jammy Jellyfish) for amd64, arm64 architectures
* Ubuntu 24.04 (Noble Numbat) for amd64, arm64, armhf architectures
* Debian 11 (Bullseye) for amd64, arm64, armhf architectures
* Debian 12 (Bookworm) for amd64, arm64, armhf architectures

# If you have RaspberryPi and no clue ...
Stanislav (LZ2SLL) has built [SD card images for RaspberryPi](https://github.com/luarvique/openwebrx/releases/), containing a clean OpenWebRX+ installation. These images should support all common SDR devices out of the box. The RTL-SDR and SDRPlay devices have been confirmed to work with no additional modifications to the image. Please, keep in mind that __this may not be the latest version__ of OpenWebRX+. Read on for the latest version.

Please note that this SD card image comes without the software support for digital modes (DMR, NXDN, etc), since the software decoder for these modes (mbelib) has questionable origins. **In order to enable digital modes** in this image, ssh into the user account you created while installing the image and type:

    sudo install-softmbe.sh

# If you are using Docker ...
Stanislav (LZ2SLL) has made OpenWebRX+ Docker images that should run on any x64 PC, arm32 SBC, or arm64 SBC. The [base image](https://hub.docker.com/r/slechev/openwebrxplus) and the [softmbe image](https://hub.docker.com/r/slechev/openwebrxplus-softmbe) are based on Debian Bookworm with the latest OpenWebRX+ packages installed. These images should fully support all receivers, features and decoders.

# If you already have OpenWebRX+ installed ...
In order to **upgrade from a previous OpenWebRX+** version, do the following, **as root**:

    apt update
    apt upgrade

# If you are an Ubuntu 22.04 user ...
In order to add this repository to your **Ubuntu 22.04** system, do the following, **as root**:

    wget -O - https://luarvique.github.io/ppa/openwebrx-plus.gpg | gpg --dearmor -o /etc/apt/trusted.gpg.d/openwebrx-plus.gpg
    echo "deb [signed-by=/etc/apt/trusted.gpg.d/openwebrx-plus.gpg] https://luarvique.github.io/ppa/ubuntu ./" > /etc/apt/sources.list.d/openwebrx-plus.list
    apt update

You should also have the original OpenWebRX repository added, since it contains some necessary packages. In order to add the original OpenWebRX repository to your **Ubuntu 22.04** system, do the following, **as root**:

    wget -O - https://repo.openwebrx.de/debian/key.gpg.txt | gpg --dearmor -o /usr/share/keyrings/openwebrx.gpg
    echo "deb [signed-by=/usr/share/keyrings/openwebrx.gpg] https://repo.openwebrx.de/ubuntu/ jammy main" > /etc/apt/sources.list.d/openwebrx.list
    apt update

# If you are an Ubuntu 24.04 user ...
If you have a **Ubuntu 24.04** system, there is now an experimental OpenWebRX+ build available for you. Do the following, **as root**:

    wget -O - https://luarvique.github.io/ppa/openwebrx-plus.gpg | gpg --dearmor -o /etc/apt/trusted.gpg.d/openwebrx-plus.gpg
    echo "deb [signed-by=/etc/apt/trusted.gpg.d/openwebrx-plus.gpg] https://luarvique.github.io/ppa/noble ./" > /etc/apt/sources.list.d/openwebrx-plus.list
    apt update

**Ubuntu 24.04** users **must not** add the original OpenWebRX repository to their system, since it contains Ubuntu 22.04 packages.   

# If you are a Debian Bullseye user ...
In order to add this repository to your **Debian Bullseye** system, do the following, **as root**:

    wget -O - https://luarvique.github.io/ppa/openwebrx-plus.gpg | gpg --dearmor -o /etc/apt/trusted.gpg.d/openwebrx-plus.gpg
    echo "deb [signed-by=/etc/apt/trusted.gpg.d/openwebrx-plus.gpg] https://luarvique.github.io/ppa/debian ./" > /etc/apt/sources.list.d/openwebrx-plus.list
    apt update

You should also have the original OpenWebRX repository added, since it contains some necessary packages. In order to add the original OpenWebRX repository to your **Debian Bullseye** system, do the following, **as root**:

    wget -O - https://repo.openwebrx.de/debian/key.gpg.txt | gpg --dearmor -o /usr/share/keyrings/openwebrx.gpg
    echo "deb [signed-by=/usr/share/keyrings/openwebrx.gpg] https://repo.openwebrx.de/debian/ bullseye main" > /etc/apt/sources.list.d/openwebrx.list
    apt update

# If you are a Debian Bookworm user ...
If you have a **Debian Bookworm** system, there is now an experimental OpenWebRX+ build available for you. Do the following, **as root**:

    wget -O - https://luarvique.github.io/ppa/openwebrx-plus.gpg | gpg --dearmor -o /etc/apt/trusted.gpg.d/openwebrx-plus.gpg
    echo "deb [signed-by=/etc/apt/trusted.gpg.d/openwebrx-plus.gpg] https://luarvique.github.io/ppa/bookworm ./" > /etc/apt/sources.list.d/openwebrx-plus.list
    apt update

**Debian Bookworm** users **must not** add the original OpenWebRX repository to their system, since it contains Bullseye packages.

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

    https://www.sdrplay.com/downloads/

**SDRPlay API can also be installed as an unofficial package**, by following these instructions:

    https://gitlab.com/martin.herren/libsdrplay-api
