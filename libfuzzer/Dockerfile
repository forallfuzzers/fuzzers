FROM debian:stable-slim
RUN apt-get update && \
    apt-get install -fy clang curl wget libfuzzer-7-dev libc6-dbg && \
    # Install Rust
    curl https://sh.rustup.rs -sSf | sh -s -- -y && \
    export PATH="$HOME/.cargo/bin:$PATH" && \
    cargo install cargo-fuzz && \
    rustup install nightly && \
    rustup default nightly && \
    # Install Go
    wget https://golang.org/dl/go1.16.3.linux-amd64.tar.gz && \
    rm -rf /usr/local/go && tar -C /usr/local -xzf go1.16.3.linux-amd64.tar.gz && \
    export PATH=$PATH:/usr/local/go/bin && \
    go get -u github.com/dvyukov/go-fuzz/go-fuzz github.com/dvyukov/go-fuzz/go-fuzz-build && \
    rm -rf /var/lib/apt/lists/* && mkdir -p /corpus

LABEL LANGUAGES "c, c++, go, rust"
LABEL FUZZER "libfuzzer"
