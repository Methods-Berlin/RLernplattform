# We start with the official miniconda image
FROM ghcr.io/methods-berlin/rlernplattform_dep:latest

# get lock-file
COPY renv.lock renv.lock

# packages are saved in the folder r_packages
ENV RENV_PATHS_LIBRARY r_packages

# install/update packages
RUN R -e "renv::restore()"
