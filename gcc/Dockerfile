# FILE: Dockerfile

FROM debian:buster

# Install a bunch of build shit.
RUN 	  sed -i -E "s/^deb (.*)$/deb \1\ndeb-src \1/g" /etc/apt/sources.list; \
    	apt-get update \
	&& apt-get install -y \
		apt-transport-https \
		aria2 \
		bison \
		build-essential \
		cmake \
		curl \
		flex \
		git \
		libfl-dev \
		libgmp-dev \
		libmpc-dev \
		libmpfr-dev \
		libz3-dev \
		subversion \
		sudo \
		unzip \
		vim \
		wget \
		libx11-dev x11proto-core-dev libxt-dev \
	  	rsync libxt-dev libxmu-dev libxpm-dev \
		libxft-dev libxaw7-dev x11-apps;		
