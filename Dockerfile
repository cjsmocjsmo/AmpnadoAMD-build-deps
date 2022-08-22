FROM debian:bullseye-slim

RUN \
	apt-get update && \
	apt-get -y dist-upgrade && \
	apt-get -y autoclean && \
	apt-get -y autoremove && \
	apt-get install --no-install-recommends -y \
		libjpeg-dev \
		zlib1g-dev \
		zlib1g \
		python3-dev \
        python3-setuptools \
		python3-mutagen \
		python3-tornado \
		python3-pil \
		python3-pymongo

CMD [ "/bin/sh" ]