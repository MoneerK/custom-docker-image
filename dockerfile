FROM ubuntu:latest
LABEL maintainer="moneer@moneerkattan.com"
LABEL version="0.1"
LABEL description="Custom Docker Image for linux with GUI that can be accessed through RDP."
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update && apt upgrade -y && apt-get install -y xfce4 xfce4-goodies xrdp && apt autoremove -y && apt autoclean -y
# Set the environment variable for the display
ENV DISPLAY=:0
# Start the Xfce desktop environment
CMD /etc/init.d/xrdp start && startxfce4
