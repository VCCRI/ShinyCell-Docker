FROM rocker/shiny:latest

RUN apt-get update && apt-get install -y \
    --no-install-recommends \
    git-core \
    libssl-dev \
    libcurl4-gnutls-dev \
    curl \
    libsodium-dev \
    libxml2-dev \
    libicu-dev \
    libhdf5-dev \
    patch \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENV _R_SHLIB_STRIP_=true

RUN install2.r --error --skipinstalled \
    shiny \
    shinyhelper \
    data.table \
    Matrix \
    DT \
    magrittr \
    ggplot2 \
    ggrepel \
    ggdendro \
    gridExtra \
    hdf5r 

EXPOSE 3838

CMD ["R", "-e", "shiny::runApp('/srv/shiny-server/', port = 3838, host = '0.0.0.0')"]