FROM rust:1.44-buster

RUN rustup update nightly-2022-10-13 && \
    rustup default nightly-2022-10-13 && \
    cargo install cargo-fuzz --version 0.11.0

LABEL LANGUAGES "rust"
LABEL FUZZERCLASS "libfuzzer"
