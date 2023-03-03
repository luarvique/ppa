# OpenWebRX+ Package Repository

__You can discuss OpenWebRX+ features, problems, get news and support in the [OpenWebRX Telegram channel](https://t.me/openwebrx) and [its chat](https://t.me/openwebrx_chat).__

This is the package repository for the improved version of the OpenWebRX online SDR. The new and original features available in this version of OpenWebRX:
* Built-in SSTV decoder with background decoding.
* Built-in AIS decoder.
* Built-in CW decoder.
* Built-in RTTY decoder.
* Built-in MP3 recorder for received audio.
* Image browser for received SSTV images.
* Adjustable noise filtering based on spectral subtraction.
* Adjustable tuning step.
* Improved touch screen operation, with panning and zooming.
* Improved scroll wheel support, with tuning and zooming.
* Improved tuning in CW mode.
* Bandpass filter adjustable with scroll wheel.
* More reliable SDRPlay devices operation.
* Better map information, with distances.
* Better APRS map information, with weather.
* Configurable session timeout, with a policy page.
* HTTPS protocol support (requires SSL certificate).

This repository contains packages for the following Linux distributions:
* Ubuntu 22.04 (Jammy Jellyfish) for amd64, arm64 architectures
* Debian 11 (Bullseye) for amd64, arm64, armhf architectures

# If you have RaspberryPi 4 and no clue ...
Jochen (DC9DD) has built an [SD card image for RaspberryPi 4](https://github.com/luarvique/openwebrx/releases/tag/image-rpi4-1.2.7), containing a clean OpenWebRX+ installation. The Linux user name is "pi" and the password is "raspberry". When accessing OpenWebRX+ Settings page, the user name is "admin" and the password is "raspberry". __Make sure you change these passwords__ immediately after booting the image for the first time. Please, keep in mind that __this may not be the latest version__ of OpenWebRX+. Read on for the latest version.

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
