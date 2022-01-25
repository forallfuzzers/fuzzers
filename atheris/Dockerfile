FROM debian:bullseye-slim
RUN apt-get update && \
    apt-get install -y python3.9 python3-pip && \
    pip3 install atheris==2.0.7
RUN mkdir -p /corpus

LABEL LANGUAGES "python"
LABEL FUZZERCLASS "libfuzzer"
