FROM centos:latest
MAINTAINER John Whitley
RUN useradd -m prometheus
RUN usermod -aG wheel username
RUN su - prometheus
RUN mkdir ~/Downloads
RUN cd ~/Downloads
RUN curl -LO "https://github.com/prometheus/prometheus/releases/download/0.16.0/prometheus-0.16.0.linux-amd64.tar.gz"
RUN mkdir ~/Prometheus
RUN cd ~/Prometheus
RUN tar -xvzf ~/Downloads/prometheus-0.16.0.linux-amd64.tar.gz
