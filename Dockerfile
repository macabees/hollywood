FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive
ENV TERM=xterm-256color
ENV TZ America/Los_Angeles
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

RUN apt-get -y update \ 
    && apt-get -y install \
        tzdata hollywood \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && ln -sf /usr/share/zoneinfo/America/Los_Angeles /etc/localtime  \
    && dpkg-reconfigure tzdata 
    #&& updatedb

CMD ["hollywood"]
