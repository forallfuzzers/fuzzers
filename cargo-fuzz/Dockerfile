FROM rust:1.44-buster
RUN rustup update 1.54.0 && \
    rustup default 1.54.0 && \
    cargo install cargo-fuzz
 
LABEL LANGUAGES "rust"
LABEL FUZZERCLASS "libfuzzer"
