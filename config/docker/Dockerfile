FROM scratch
ADD openwrt-docker-armvirt-64-default-rootfs.tar.gz /
VOLUME [ "/etc" ]
EXPOSE 22 53 80 443 7681
ENTRYPOINT ["/sbin/init"]
