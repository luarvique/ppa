# Improved OpenWebRX Package Repository
This is the package repository for the improved version of the OpenWebRX online SDR. Features available in this version of OpenWebRX:
* Adjustable noise filtering based on spectral subtraction.
* Adjustable tuning step.
* Waterfall panning on touchscreen based devices.
* Improved tuning in CW mode.
* More reliable SDRPlay devices operation.
* Better map information, with distances.
* Better APRS map information, with weather.
    
In order to add this repository to your system, do the following, **as root**:

    curl -s --compressed "https://luarvique.github.io/ppa/openwebrx-plus.gpg" | gpg --dearmor -o /trusted.gpg.d/openwebrx-plus.gpg
    curl -s --compressed -o /etc/apt/sources.list.d/openwebrx-plus.list "https://luarvique.github.io/ppa/openwebrx-plus.list"
    apt update

You should also have the original OpenWebRX repository added, since it contains some necessary packages. In order to add the original OpenWebRX repository to your system, do the following, **as root**:

    wget -O - https://repo.openwebrx.de/debian/key.gpg.txt | gpg --dearmor -o /usr/share/keyrings/openwebrx.gpg
    echo "deb [signed-by=/usr/share/keyrings/openwebrx.gpg] https://repo.openwebrx.de/debian/ bullseye main" > /etc/apt/sources.list.d/openwebrx.list
    apt update

Finally, in order to install OpenWebRX, do the following, **as root**:

    apt install openwebrx
    apt install aprs-symbols
    apt install nmux
    apt install codecserver
    apt install m17-demod
    apt install direwolf
    apt install wsjtx
    apt install js8call
    apt install python3-js8py
    apt install python3-digiham
