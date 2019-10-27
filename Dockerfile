From buildpack-deps:xenial-scm
LABEL maintainer="MMX <4isnothing@gmail.com>"

ENV ARCHITECH=arm64
WORKDIR /opt/ss-arm/
COPY . .
RUN wget -O rpi.zip https://github.com/raspberrypi/tools/archive/master.zip && \
	apt update && apt install -y \
	unzip \
	autoconf \
	automake \
	libtool \
    gettext  \
    pkg-config \
	build-essential \
	upx \
	&& unzip -d /usr/local/rpi rpi.zip && rm rpi.zip \
    && apt clean --dry-run -y

ENTRYPOINT ["/opt/ss-arm/entrypoint.sh"]
