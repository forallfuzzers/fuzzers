FROM rust:1.44-buster
RUN cargo install cargo-fuzz && \
    rustup install nightly && \
    rustup default nightly
 
LABEL LANGUAGES "rust"
LABEL FUZZERCLASS "libfuzzer"
