FROM debian:stable-slim
RUN apt-get update && \
    apt-get install -fy clang libfuzzer-7-dev libc6-dbg && \
    go get -u github.com/dvyukov/go-fuzz/go-fuzz github.com/dvyukov/go-fuzz/go-fuzz-build && \
    rm -rf /var/lib/apt/lists/* && mkdir -p /corpus

LABEL LANGUAGES "c, c++, go"
LABEL FUZZER "libfuzzer"
