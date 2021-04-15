FROM debian:stable-slim
RUN apt-get update && \
    apt-get install -fy afl=2.52b-5 make libc6-dbg && \
    rm -rf /var/lib/apt/lists/* && mkdir -p /corpus

LABEL LANGUAGES "c, c++"
LABEL FUZZER "afl"

