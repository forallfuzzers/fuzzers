FROM debian:buster-slim
RUN apt-get update && \
    apt-get install -fy clang libfuzzer-7-dev libc6-dbg

LABEL LANGUAGES "c, c++"
LABEL FUZZERCLASS "libfuzzer"
