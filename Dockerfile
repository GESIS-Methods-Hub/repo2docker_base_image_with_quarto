FROM docker.io/library/buildpack-deps:bionic
RUN apt update \
    && apt install -y curl \
    && rm -rf /var/lib/apt/lists/* \
    && curl -L https://github.com/quarto-dev/quarto-cli/releases/download/v1.4.330/quarto-1.4.330-linux-amd64.deb -o /tmp/quarto.deb \
    && dpkg -i /tmp/quarto.deb \
    && rm /tmp/quarto.deb
