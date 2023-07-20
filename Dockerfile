FROM alpine:3
ENV HOME /root
ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

RUN apk add --no-cache wine wget xvfb x11vnc xdotool wget tar supervisor fluxbox gnupg net-tools bash

ADD supervisord.conf /etc/supervisord.conf

ENV WINEPREFIX /root/prefix
ENV WINEARCH win64
ENV DISPLAY :0

WORKDIR /root/
RUN wget -O - https://github.com/novnc/noVNC/archive/v1.4.0.tar.gz | tar -xzv -C /root/ && mv /root/noVNC-1.4.0 /root/novnc && ln -s /root/novnc/vnc_lite.html /root/novnc/index.html && \
    wget -O - https://github.com/novnc/websockify/archive/v0.11.0.tar.gz | tar -xzv -C /root/ && mv /root/websockify-0.11.0 /root/novnc/utils/websockify

RUN wget https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks -O /usr/bin/winetricks && chmod +x /usr/bin/winetricks

EXPOSE 8080

CMD ["/usr/bin/supervisord", "--configuration", "/etc/supervisord.conf"]
