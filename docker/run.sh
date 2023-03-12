docker build -t mb-openwebrx-image .
docker run --name openwebrxcontainer-mb --device /dev/bus/usb -p 8073:8073  -v openwebrx-settings-mb:/var/lib/openwebrx mb-openwebrx-image
