# OpenWebRX+ Package Repository
This is the package repository for the improved version of the OpenWebRX online SDR. The new and original features available in this version of OpenWebRX:
* Built-in CW decoder.
* Built-in RTTY decoder.
* Adjustable noise filtering based on spectral subtraction.
* Adjustable tuning step.
* Improved touch screen operation, with panning and zooming.
* Improved scroll wheel support, with tuning and zooming.
* Improved tuning in CW mode.
* Bandpass filter adjustable with scroll wheel.
* More reliable SDRPlay devices operation.
* Better map information, with distances.
* Better APRS map information, with weather.
* Configurable session time limit.

This repository contains packages for the following Linux distributions:
* Ubuntu 22.04 (Jammy Jellyfish) for amd64, arm64 architectures
* Debian 11 (Bullseye) for amd64, arm64, armhf architectures

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
