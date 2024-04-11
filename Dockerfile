FROM ubuntu:jammy-20240227

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y make gcc perl default-jre && \
    rm -rf /var/lib/apt/lists/*

RUN cpan XML::Simple Capture::Tiny Config::YAML IO::Tee

ENTRYPOINT [ "bash" ]