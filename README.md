# Extended OpenWebRX Package Repository
This is the package repository for the improved version of the OpenWebRX online SDR.

In order to add this repository to your system, do the following, **as root**:

    curl -s --compressed "https://luarvique.github.io/ppa/openwebrx-plus.gpg" | gpg --dearmor | tee /etc/apt/trusted.gpg.d/openwebrx-plus.gpg >/dev/null
    curl -s --compressed -o /etc/apt/sources.list.d/openwebrx-plus.list "https://luarvique.github.io/ppa/openwebrx-plus.list"
    apt update

Features available in this version of OpenWebRX:
* Adjustable noise filtering based on spectral subtraction.
* Adjustable tuning step.
* Waterfall panning on touchscreen based devices.
* Improved tuning in CW mode.
* More reliable SDRPlay devices operation.
    
