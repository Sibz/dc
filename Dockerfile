FROM rust:1.78

VOLUME [ "/usr/local/cargo/registry", "/workspace"]

WORKDIR /workspace

COPY run.sh /run.sh
CMD /run.sh
