FROM ubuntu:latest

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    gettext \
    python-is-python3 \
    python3-pip \
    texlive-full \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install --upgrade \
    furo \
    myst-parser \
    pygments \
    sphinx \
    sphinx-inline-tabs \
    sphinx-intl
