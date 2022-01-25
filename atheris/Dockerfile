FROM debian:bullseye-slim
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip3 install atheris
RUN mkdir -p /corpus

LABEL LANGUAGES "python"
LABEL FUZZERCLASS "libfuzzer"
