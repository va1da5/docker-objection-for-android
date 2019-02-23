docker run --rm -it \
    -v "$PWD":/data \
    -v /dev/bus/usb:/dev/bus/usb \
    --name objection \
    --privileged \
     objection-android bash
