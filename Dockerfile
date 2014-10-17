FROM 		loneleeandroo/gdrivefs
MAINTAINER 	LoneleeAndroo

# Update System and install deluge

RUN 		pacman -Sy --noconfirm && \
		pacman -S unzip unrar deluge python2-service-identity python2-mako python2-notify --noconfirm && \
		pacman -Scc --noconfirm

RUN 		chown -R nobody:users /usr/bin/deluged /usr/bin/deluge-web /root && \
		chmod -R 775 /usr/bin/deluged /usr/bin/deluge-web /root && \	
		rm -rf /archlinux/usr/share/locale && \
		rm -rf /archlinux/usr/share/man && \
		rm -rf /root/* && \
		rm -rf /tmp/*

# Setup environment

VOLUME		/data /config /media

EXPOSE		8112 58846 58946 58946/udp

# Additional files

ADD             deluge.conf /etc/supervisor.d/deluge.conf
