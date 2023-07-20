FROM docker.io/library/buildpack-deps:bionic
RUN apt update \
    && apt install -y curl \
    && rm -rf /var/lib/apt/lists/* \
    && curl -L $(curl https://quarto.org/docs/download/_prerelease.json | grep -oP "(?<=\"download_url\":\s\")https.*amd64\.deb") -o /tmp/quarto.deb \
    && dpkg -i /tmp/quarto.deb \
    && rm /tmp/quarto.deb
