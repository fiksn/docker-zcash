FROM debian:jessie
MAINTAINER Gregor Pogacnik <grega@pogacnik.net>

ARG GIT_URL=https://github.com/zcash/zcash.git
ARG ZCASH_VERSION=v1.0.0
ARG ZCASH_NET=mainnet.z.cash
ARG REFRESHED_AT=2016-10-28

ENV GIT_URL ${GIT_URL}
ENV ZCASH_VERSION ${ZCASH_VERSION}
ENV REFRESHED_AT ${REFRESHED_AT}
ENV ZCASH_NET ${ZCASH_NET}

VOLUME /root/.zcash

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    apt-get -qqy install build-essential pkg-config libgtest-dev libc6-dev m4 \
    g++-multilib autoconf libtool ncurses-dev unzip git python \
    zlib1g-dev wget bsdmainutils && \
    rm -rf /tmp/* && apt-get clean

RUN mkdir -p /opt/code/; cd /opt/code; \
    git clone ${GIT_URL} zcash && cd zcash && git checkout ${ZCASH_VERSION} && \
    ./zcutil/fetch-params.sh && ./zcutil/build.sh -j$(nproc) && cd /opt/code/zcash/src && \
    /usr/bin/install zcashd zcash-cli -t /usr/local/bin/ && \
    rm -rf /opt/code/

ADD entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/usr/local/bin/zcashd"]
