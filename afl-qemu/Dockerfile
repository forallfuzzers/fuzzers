FROM debian:buster-slim as builder
RUN apt-get update && \
    apt-get install -fy make gcc vim git build-essential libtool-bin wget bison python libglib2.0-dev && \
    cd ~/ && \
    git clone https://github.com/google/AFL.git --branch v2.57b && \
    cd ~/AFL && \
    make && \
    cd ~/AFL/qemu_mode && \
    ./build_qemu_support.sh

FROM debian:buster-slim
RUN apt-get update && \
    apt-get install -fy libglib2.0.0 zlib1g libc6 libstdc++6 libpcre3
COPY --from=builder /root/AFL/afl-fuzz /usr/bin
COPY --from=builder /root/AFL/afl-qemu-trace /usr/bin
ENV AFL_PATH="/usr/bin"
WORKDIR /
LABEL LANGUAGES "c, c++"
LABEL FUZZERCLASS "afl-qemu"