FROM openjdk:11
COPY * /usr/bin/
RUN mkdir -p /corpus
ENV LD_LIBRARY_PATH /usr/local/openjdk-11/lib/server

LABEL LANGUAGES "java, kotlin, jvm-based"
LABEL FUZZERCLASS "libfuzzer"
