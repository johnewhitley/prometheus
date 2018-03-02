FROM centos:latest
MAINTAINER John Whitley
RUN useradd -m prometheus
USER prometheus
RUN mkdir ~/downloads
RUN cd ~/downloads
RUN wget https://github.com/prometheus/prometheus/releases/download/v2.2.0-rc.1/prometheus-2.2.0-rc.1.linux-amd64.tar.gz
RUN mkdir ~/prometheus
RUN cd ~/prometheus
RUN tar -xvfzf ~/downloads/prometheus*
RUN cd ~/downloads
RUN wget https://github.com/prometheus/node_exporter/releases/download/v0.15.2/node_exporter-0.15.2.linux-amd64.tar.gz
RUN mkdir ~/prometheus/node_exporter
RUN cd ~/prometheus/node_exporter
RUN tar xvfz ~/downloads/node_exporter-*.tar.gz
RUN echo "[Unit]
 Description=Node Exporter

 [Service]
 User=prometheus
 ExecStart=/home/prometheus/Prometheus/node_exporter/node_exporter

 [Install]
 WantedBy=default.target" > /etc/systemd/system/node_exporter.service
RUN cd node_exporter-*
RUN ./node_exporter
ADD prometheus.yml /etc/prometheus/
EXPOSE 9100
EXPOSE 9090
