#!/bin/sh

#
# http://arstechnica.com/apple/2013/10/how-to-make-your-own-bootable-os-x-10-9-mavericks-usb-install-drive/
# http://www.redmondpie.com/how-to-make-os-x-mavericks-bootable-usb-flash-drive-for-a-clean-install/
# http://www.macworld.com/article/2056561/how-to-make-a-bootable-mavericks-install-drive.html
#

OSX_NAME="Yosemite"
APP_NAME="Install OS X ${OSX_NAME}"
APP_PATH="/Applications"
APP_FILE="${APP_PATH}/${APP_NAME}.app"

sudo "${APP_FILE}/Contents/Resources/createinstallmedia" \
    --volume "/Volumes/${OSX_NAME}" \
    --applicationpath "${APP_FILE}" \
    --nointeraction

