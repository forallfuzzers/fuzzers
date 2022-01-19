FROM rust:1.44-buster

RUN rustup update nightly-2021-08-29 && \
    rustup default nightly-2021-08-29 && \
    cargo install cargo-fuzz --version 0.10.0
 
LABEL LANGUAGES "rust"
LABEL FUZZERCLASS "libfuzzer"
