# Improved OpenWebRX Package Repository
This is the package repository for the improved version of the OpenWebRX online SDR. Features available in this version of OpenWebRX:
* Adjustable noise filtering based on spectral subtraction.
* Adjustable tuning step.
* Waterfall panning on touchscreen based devices.
* Improved tuning in CW mode.
* More reliable SDRPlay devices operation.
* Better map information, with distances.
* Better APRS map information, with weather.

This repository contains packages for the following Linux distributions:
* Ubuntu 22.04 (Jammy Jellifysh) for amd64, arm64 architectures
* Debian 11 (Bullseye) for amd64, arm64, armhf architectures

In order to add this repository to your **Ubuntu** system, do the following, **as root**:

    wget -O - https://luarvique.github.io/ppa/openwebrx-plus.gpg | gpg --dearmor -o /etc/apt/trusted.gpg.d/openwebrx-plus.gpg
    echo "deb [signed-by=/etc/apt/trusted.gpg.d/openwebrx-plus.gpg] https://luarvique.github.io/ppa/ubuntu ./" > /etc/apt/sources.list.d/openwebrx-plus.list
    apt update

In order to add this repository to your **Debian** system, do the following, **as root**:

    wget -O - https://luarvique.github.io/ppa/openwebrx-plus.gpg | gpg --dearmor -o /etc/apt/trusted.gpg.d/openwebrx-plus.gpg
    echo "deb [signed-by=/etc/apt/trusted.gpg.d/openwebrx-plus.gpg] https://luarvique.github.io/ppa/debian ./" > /etc/apt/sources.list.d/openwebrx-plus.list
    apt update

You should also have the original OpenWebRX repository added, since it contains some necessary packages. In order to add the original OpenWebRX repository to your system, do the following, **as root**:

    wget -O - https://repo.openwebrx.de/debian/key.gpg.txt | gpg --dearmor -o /usr/share/keyrings/openwebrx.gpg
    echo "deb [signed-by=/usr/share/keyrings/openwebrx.gpg] https://repo.openwebrx.de/debian/ bullseye main" > /etc/apt/sources.list.d/openwebrx.list
    apt update

Finally, in order to install OpenWebRX, do the following, **as root**:

    apt install openwebrx

To make sure OpenWebRX is running, direct your local web browser to the following address:

    http://localhost:8073/
    
You should see the OpenWebRX web interface, with the noise filter (NR) and tuning step (>-<) controls.
