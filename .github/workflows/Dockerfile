# We start with the official miniconda image
FROM r-base

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
