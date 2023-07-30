FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    gettext \
    texlive-full \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade \
    furo \
    myst-parser \
    pygments \
    sphinx \
    sphinx-inline-tabs \
    sphinx-intl
