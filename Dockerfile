FROM ubuntu:latest

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    gettext \
    git \
    pipx \
    python-is-python3 \
    rsync \
    texlive-full \
    && rm -rf /var/lib/apt/lists/*
    && pipx ensurepath

RUN pipx install \
    furo \
    myst-parser \
    pygments \
    sphinx \
    sphinx-inline-tabs \
    sphinx-intl \
    --include-deps
