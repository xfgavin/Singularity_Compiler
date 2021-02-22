#!/usr/bin/env bash
echo "**********************************************"
echo "*Installing prerequisites                    *"
echo "**********************************************"
mkdir -p /opt/fmritools/singularity
apt-get -qq update >/dev/null 2>&1
apt-get install -qq --no-install-recommends --allow-unauthenticated apt-utils >/dev/null 2>&1
apt-get -qq --allow-unauthenticated install -y tar build-essential \
    uuid-dev \
    libgpgme-dev \
    squashfs-tools \
    libseccomp-dev \
    wget \
    pkg-config \
    git \
    cryptsetup-bin >/dev/null
apt-get -qq autoremove >/dev/null
apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
chmod -R 777 /tmp
rm -f /bin/sh
ln -s bash /bin/sh
