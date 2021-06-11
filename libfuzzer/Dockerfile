FROM debian:stable-slim
RUN apt-get update && \
    apt-get install -fy lsb-release wget software-properties-common gnupg gnupg2 gnupg1 && \
    wget https://apt.llvm.org/llvm.sh && \
    chmod +x llvm.sh && \
    ./llvm.sh 12

LABEL LANGUAGES "c, c++"
LABEL FUZZERCLASS "libfuzzer"
