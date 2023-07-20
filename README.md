# wine-docker-alpine

![Docker Image Size (tag)](https://img.shields.io/docker/image-size/qwerzl/wine-novnc-alpine/latest)
![Docker Pulls](https://img.shields.io/docker/pulls/qwerzl/wine-novnc-alpine)

This image is based on [solarkennedy/wine-x11-novnc-docker](https://github.com/solarkennedy/wine-x11-novnc-docker) with alpine and updated dependecies. Image is a LOT smaller compared to the massive size of the ubuntu-based original one.

This container runs:
- Xvfb - X11 in a virtual framebuffer
- x11vnc - A VNC server that scrapes the above X11 server
- noNVC - A HTML5 canvas vnc viewer
- Fluxbox - a small window manager
- Explorer.exe - to demo that it works

![Screenshot](https://raw.githubusercontent.com/solarkennedy/wine-x11-novnc-docker/master/screenshot.png)
