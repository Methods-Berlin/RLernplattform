# We start with the official miniconda image
FROM ghcr.io/methods-berlin/rlernplattform_dep:latest

# get lock-file
COPY renv.lock renv.lock

# install/update packages
RUN R -e "renv::restore()"
