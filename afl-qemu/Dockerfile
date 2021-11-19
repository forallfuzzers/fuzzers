FROM debian:buster-slim
RUN apt-get update && \
    apt-get install -fy make gcc vim git build-essential libtool-bin wget bison python libglib2.0-dev && \
    cd ~/ && \
    git clone https://github.com/google/AFL.git --branch v2.57b && \
    cd ~/AFL && \
    make && \
    cd ~/AFL/qemu_mode && \
    ./build_qemu_support.sh
ENV PATH="/root/AFL:${PATH}"
ENV AFL_PATH="/root/AFL"
WORKDIR /root
LABEL LANGUAGES "c, c++"
LABEL FUZZERCLASS "afl-qemu"