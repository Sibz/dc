FROM rust:1.78

VOLUME [ "/usr/local/cargo/registry", "/workspace"]

WORKDIR /workspace

COPY run.sh /run.sh
RUN chmod +x /run.sh
CMD /run.sh
