## build command: docker build -f compareStudies-aptget.Dockerfile -t asorgen/comparestudies:v2 .

## Never did get this one to build.  
## But I like this alternative syntax for installing stuff. I found it in the rocker Dockerfiles.

FROM r-base:3.6.3

RUN apt-get update -qq && apt-get -y --no-install-recommends install \
  libxml2-dev \
  libcairo2-dev \
  libsqlite-dev \
  libmariadbd-dev \
  libmariadbclient-dev \
  libpq-dev \
  libssh2-1-dev \
  unixodbc-dev \
  libsasl2-dev \
  && install2.r --error \
    --deps TRUE \
    ggplot2 \
    gridExtra \
    ggsignif \
    ggrepel 

#4.) check that packages installed
RUN Rscript -e "library('ggplot2'); library('gridExtra'); library('ggsignif'); library('ggrepel'); "
