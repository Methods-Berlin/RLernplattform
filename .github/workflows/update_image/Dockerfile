# We start with the official miniconda image
FROM ghcr.io/methods-berlin/rlernplattform_dep:latest


# packages are saved in the folder r_packages

# get lock-file
COPY renv.lock renv.lock

# specify where to install packages
ENV RENV_PATHS_LIBRARY r_packages

# install/update packages and remove those that are no longer used
RUN R -e "renv::restore(clean = TRUE)"
