FROM centos:latest
MAINTAINER John Whitley
RUN yum -y install wget
RUN wget "https://github.com/prometheus/prometheus/releases/download/v2.2.0-rc.1/prometheus-2.2.0-rc.1.linux-amd64.tar.gz" 
RUN tar -xvzf /prometheus-2.2.0-rc.1.linux-amd64.tar.gz
RUN wget "https://github.com/prometheus/node_exporter/releases/download/0.11.0/node_exporter-0.11.0.linux-amd64.tar.gz"
RUN tar -xvzf /node_exporter-0.11.0.linux-amd64.tar.gz



#CMD systemctl daemon-reload
#CMD systemctl enable node_exporter.service
#CMD systemctl start node_exporter.service


COPY prometheus.yml /etc/prometheus/prometheus.yml
COPY node_exporter.service /etc/systemd/system/node_exporter.service
CMD /prometheus-2.2.0-rc.1.linux-amd64/prometheus --config.file=/etc/prometheus/prometheus.yml 

EXPOSE 9090
EXPOSE 9100
