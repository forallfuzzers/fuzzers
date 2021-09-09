FROM debian:buster-slim
RUN apt-get update && \
    apt-get install -fy make curl build-essential binutils-dev libunwind-dev clang afl=2.52b-5 libc6-dbg && \
    rm -rf /var/lib/apt/lists/* && mkdir -p /corpus && \
    curl -L -o honggfuzz-1.9.tgz https://github.com/google/honggfuzz/archive/1.9.tar.gz && \
    tar zxf honggfuzz-1.9.tgz && \
    cd honggfuzz-1.9 && \
    make && \
    make install

LABEL LANGUAGES "c, c++"
LABEL FUZZERCLASS "honggfuzz"