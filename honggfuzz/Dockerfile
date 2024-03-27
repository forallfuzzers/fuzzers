FROM debian:bookworm-slim
ARG TAG=2.6
RUN apt-get update && \
    apt-get install -fy make curl build-essential build-essential binutils-dev libunwind-dev libblocksruntime-dev clang && \
    rm -rf /var/lib/apt/lists/* && mkdir -p /testsuite && \
    curl -L -o honggfuzz-${TAG}.tgz https://github.com/google/honggfuzz/archive/${TAG}.tar.gz && \
    tar zxf honggfuzz-${TAG}.tgz && \
    cd honggfuzz-${TAG} && \
    make && \
    make install

LABEL LANGUAGES "c, c++"
LABEL FUZZERCLASS "honggfuzz"
