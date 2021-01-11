FROM dxjoke/tectonic-docker:latest

RUN apt-get update \
    && apt-get install -yq --no-install-suggests --no-install-recommends --force-yes fonts-font-awesome texlive-fonts-extra texlive-latex-recommended \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/tex