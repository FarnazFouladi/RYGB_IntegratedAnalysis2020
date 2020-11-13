## build command: docker build -f pdftools-aptget.Dockerfile -t asorgen/pdftools:v2 .

FROM r-base:3.6.3

RUN apt-get install libpoppler-cpp-dev

RUN Rscript -e "install.packages('pdftools', dependencies=c('Depends', 'Imports') )"

RUN Rscript -e "library('pdftools');"

