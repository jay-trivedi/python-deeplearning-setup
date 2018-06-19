#!/bin/sh

# Add default repo here ---
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
sudo sh -c 'echo "deb https://cran.rstudio.com/bin/linux/ubuntu xenial/" >> /etc/apt/sources.list.d/cranR.list'

sudo apt-get update
sudo apt-get install -y r-base r-base-dev r-recommended

# In R
sudo apt-get install libcurl4-openssl-dev #for Rcurl
Rscript -e 'install.packages(c("ggplot2", "data.table", "RPostgreSQL", "dplyr"), repos="http://cran.rstudio.com/", lib="~/bin/R/library")'
Rscript -e 'install.packages(c("caret", "xgboost", "mlr"), repos="http://cran.rstudio.com/", lib="~/bin/R/library")'
