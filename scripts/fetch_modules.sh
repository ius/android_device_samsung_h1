#!/bin/sh

URL=http://h1.pargon.nl/files/modules/2.6.36
wget $URL/omaplfb.ko -O prebuilt/egl/omaplfb.ko
wget $URL/pvrsrvkm.ko -O prebuilt/egl/pvrsrvkm.ko
wget $URL/wl1271_sdio.ko -O prebuilt/wifi/wl1271_sdio.ko

