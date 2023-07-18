# We start with the official miniconda image
FROM r-base

# install cmake
RUN apt-get update && apt-get -y install cmake\
  git\
  sudo\
  libssl-dev\
  libcurl4-openssl-dev\
  libfontconfig1-dev\
  libharfbuzz-dev\
  libfribidi-dev\
  libfreetype6-dev\
  libpng-dev\
  libtiff5-dev\
  libjpeg-dev\
  libxml2-dev

# install gh and jq for quarto
RUN |
  type -p curl >/dev/null || (sudo apt update && sudo apt install curl -y)
  curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
  && sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
  && echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
  && sudo apt update \
  && sudo apt install gh -y\
  && apt install jq -y 

# install quarto
RUN R -e "install.packages(c('quarto'))"

# create a directory to save the packages in
RUN mkdir r_packages

# install renv
RUN R -e "install.packages('renv')"

# get lock-file
COPY renv.lock renv.lock

# specify where to install packages
ENV RENV_PATHS_LIBRARY r_packages

# install packages
RUN R -e "renv::restore()"
