FROM debian:stable-slim
RUN apt-get update && \
    apt-get install -fy software-properties-common wget gnupg gnupg2 gnupg1 && \
    add-apt-repository 'deb http://apt.llvm.org/buster/ llvm-toolchain-buster-12 main' && \
    wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - && \
    apt-get update && \
    apt-get install -fy libfuzzer-12-dev

LABEL LANGUAGES "c, c++"
LABEL FUZZERCLASS "libfuzzer"
