# Docker image to run QGIS Latest Release
# 20210321 - CC BY-SA - Miguel Sevilla-Callejo

FROM debian:buster

LABEL Name=qgis_latest Version=0.2
LABEL maintainer Miguel Sevilla-Callejo "https://msevilla00.gitlab.io"

ENV DEBIAN_FRONTEND noninteractive

# default user: `qgis`
#ENV USER="qgis"

# add necessary packages
RUN apt-get update \
  && apt-get install -y \
    apt-utils \
    curl \
    gpg \
    keyboard-configuration \
    nano \
    software-properties-common \
    supervisor \
    ssh \
    unzip \
    wget \
    xvfb

#ENV LANG en_US.UTF-8
#ENV LANGUAGE en_US.UTF-8
#ENV LC_ALL en_US.UTF-8

# ADD QGIS to the system ######################################################## 

# Add QGIS Latest release repository
RUN echo "deb http://qgis.org/debian buster main" > /etc/apt/sources.list.d/qgis-latest.list


# Add QGIS repository
#RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key 51F523511C7028C3
RUN wget -qO - https://qgis.org/downloads/qgis-2020.gpg.key | gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/qgis-archive.gpg --import
RUN chmod a+r /etc/apt/trusted.gpg.d/qgis-archive.gpg
RUN apt-get update
RUN apt-get install -y lxqt-core
RUN apt-get install -y qgis qgis-plugin-grass 

# Uncomment if you want to install QGIS server
#RUN apt-get install qgis-server

# Uncomment if you want to install GRASS & SAGA
RUN apt-get install -y grass saga

# Set up SSH service to use X outside of the container
RUN sed -i 's/\#X11UseLocalhost yes/X11UseLocalhost no/g' /etc/ssh/sshd_config

# Add supervisor ##########################################################

# create directory for child images to store configuration in
RUN mkdir -p /var/log/supervisor

    # Add supervisor service configuration script
COPY ./supervisor/ /etc/supervisor

    # Run supervisor
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]


###########################################################################
# To BUILD IMAGE with this code run:
# `docker build -t msevilla00/qgis:latest -f qgis_lr_buster.dockerfile .`

# To RUN QGIS from container:
# xhost + 
# & docker run --rm -it --name qgisdev \
#   -v /datafolder:/root/ -v /tmp/.X11-unix:/tmp/.X11-unix \
#   -e DISPLAY=unix$DISPLAY msevilla00/qgis:latest qgis