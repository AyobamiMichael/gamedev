FROM notfl3/cargo-apk:latest

RUN rustup toolchain install 1.73.0 \
    && rustup default 1.73.0 \
    && rustup target add armv7-linux-androideabi


# Verify installation
RUN rustc --version && rustup target list --installed
