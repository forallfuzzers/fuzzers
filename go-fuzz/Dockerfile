FROM golang:1.13.3-buster as go-target
RUN go get -u github.com/dvyukov/go-fuzz/go-fuzz github.com/dvyukov/go-fuzz/go-fuzz-build && \
    apt-get update && \
    apt-get install -y clang
 
LABEL LANGUAGES "go"
LABEL FUZZERCLASS "libfuzzer"
