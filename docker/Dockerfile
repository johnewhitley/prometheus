FROM centos:latest
MAINTAINER John Whitley
RUN yum -y install wget
RUN wget "https://github.com/prometheus/prometheus/releases/download/0.16.0/prometheus-0.16.0.linux-amd64.tar.gz" 
RUN tar -xvzf /prometheus-0.16.0.linux-amd64.tar.gz
RUN wget "https://github.com/prometheus/node_exporter/releases/download/0.11.0/node_exporter-0.11.0.linux-amd64.tar.gz"
RUN tar -xvzf /node_exporter-0.11.0.linux-amd64.tar.gz
CMD prometheus-0.16.0.linux-amd64/prometheus -version
CMD systemctl daemon-reload
CMD systemctl enable node_exporter.service
CMD systemctl start node_exporter.service

COPY prometheus.yml /etc/prometheus/prometheus.yml
COPY node_exporter.service /etc/systemd/system/node_exporter.service
CMD ["/usr/sbin/init"]

EXPOSE 9090
EXPOSE 9100
