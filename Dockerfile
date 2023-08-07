FROM mambaorg/micromamba:1.4.9
LABEL maintainer="Antonio Camargo (antoniop.camargo@lbl.gov)"
LABEL version="1.6.1"

RUN micromamba install -y -n base -c conda-forge -c bioconda genomad==1.6.1 && \
    micromamba clean --all --yes
WORKDIR /app
ENTRYPOINT ["/usr/local/bin/_entrypoint.sh", "genomad"]
