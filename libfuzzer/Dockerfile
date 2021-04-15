FROM debian:stable-slim
RUN apt-get update && \
    apt-get install -fy clang libfuzzer-7-dev libc6-dbg && \
    rm -rf /var/lib/apt/lists/* && mkdir -p /corpus

LABEL LANGUAGES "c,c++"
LABEL FUZZER "libfuzzer"
