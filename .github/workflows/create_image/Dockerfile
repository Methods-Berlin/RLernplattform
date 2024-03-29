# We start with the official miniconda image
FROM rocker/tidyverse

# install cmake
#RUN apt-get update && apt-get -y reinstall libfreetype-dev libfreetype6-dev

# install cmake
RUN apt-get update && apt-get -y install cmake\
  git\
  sudo\
  libssl-dev\
  libcurl4-openssl-dev\
  libfontconfig1-dev\
  libharfbuzz-dev\
  libfribidi-dev\
  libpng-dev\
  libtiff5-dev\
  libjpeg-dev\
  libxml2-dev

# install gh and jq for quarto
RUN type -p curl >/dev/null || (sudo apt update && sudo apt install curl -y) \
  && curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
  && sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
  && echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
  && sudo apt update \
  && sudo apt install gh -y\
  && apt install jq -y 

# install quarto and rmarkdown
RUN R -e "install.packages(c('quarto', 'rmarkdown'))"

# install renv
RUN R -e "install.packages('renv')"

# get lock-file
COPY renv.lock renv.lock

# install packages
RUN R -e "renv::restore()"
