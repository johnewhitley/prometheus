FROM centos:latest
RUN yum update && \
    yum -y install sudo \
    useradd -m prometheus && echo "docker" | chpasswd && adduser prometheus sudo
USER prometheus
RUN
    mkdir ~/downloads \
    cd ~/downloads \
    wget https://github.com/prometheus/prometheus/releases/download/v2.2.0-rc.1/prometheus-2.2.0-rc.1.linux-amd64.tar.gz \
    mkdir ~/prometheus \
    cd ~/prometheus \
    tar -xvfzf ~/downloads/prometheus* \
    cd ~/downloads \
    wget https://github.com/prometheus/node_exporter/releases/download/v0.15.2/node_exporter-0.15.2.linux-amd64.tar.gz \
    mkdir ~/prometheus/node_exporter
    cd ~/prometheus/node_exporter
    tar xvfz ~/downloads/node_exporter-*.tar.gz \
    echo "[Unit]
Description=Node Exporter

[Service]
User=prometheus
ExecStart=/home/prometheus/Prometheus/node_exporter/node_exporter

[Install]
WantedBy=default.target" > /etc/systemd/system/node_exporter.service \
    cd node_exporter-* \
    ./node_exporter
ADD prometheus.yml /etc/prometheus/
EXPOSE 9100
EXPOSE 9090
