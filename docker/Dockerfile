FROM ubuntu:22.04
WORKDIR /home/tech_prj
RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 \
    python3-pip \
    git \
    && rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get install -y locales && \
    locale-gen en_US.UTF-8 && \
    update-locale LANG=en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8
# Install kas requirements
RUN pip3 install --upgrade pip
RUN pip3 install kas

RUN pip3 install jsonschema \
    PyYAML \
    distro
#yocto related packages
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    gawk wget git diffstat unzip texinfo gcc build-essential chrpath socat \
    cpio python3-pexpect xz-utils debianutils iputils-ping \
    python3-git python3-jinja2 libegl1-mesa-dev libgl-dev pylint xterm tar locales \
    bzip2 liblz4-tool zstd lz4 libarchive-tools \
    && pip3 install --no-cache-dir subunit testtools \
    && rm -rf /var/lib/apt/lists/*

COPY ./tech_prj /home/yocto/tech_prj

#COPY layers/ /home/yocto/layers/
#COPY work/sstate-cache/ /home/yocto/work/sstate-cache
#COPY work/downloads/ /home/yocto/work/downloads

WORKDIR /home/yocto/tech_prj/Kas
RUN chmod +x entrypoint.sh
ENTRYPOINT ["/bin/sh", "entrypoint.sh"]
CMD ["--help"]
