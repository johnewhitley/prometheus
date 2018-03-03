FROM centos:latest
MAINTAINER John Whitley

# Run all pre-req
RUN yum -y install wget
#RUN yum -y install https://s3-us-west-2.amazonaws.com/grafana-releases/release/grafana-5.0.0-1.x86_64.rpm
RUN wget "https://github.com/prometheus/prometheus/releases/download/v2.2.0-rc.1/prometheus-2.2.0-rc.1.linux-amd64.tar.gz" 
RUN tar -xvzf /prometheus-2.2.0-rc.1.linux-amd64.tar.gz
RUN wget "https://github.com/prometheus/node_exporter/releases/download/0.11.0/node_exporter-0.11.0.linux-amd64.tar.gz"
RUN tar -xvzf /node_exporter-0.11.0.linux-amd64.tar.gz
RUN wget "https://grafanarel.s3.amazonaws.com/builds/grafana-2.5.0.linux-x64.tar.gz"
RUN tar -xvzf /grafana-2.5.0.linux-x64.tar.gz

# Commands needed to config and launch the two services
COPY prometheus.yml /etc/prometheus/prometheus.yml
COPY node_exporter.service /etc/systemd/system/node_exporter.service
CMD /prometheus-2.2.0-rc.1.linux-amd64/prometheus --config.file=/etc/prometheus/prometheus.yml & /node_exporter 
#& /grafana-2.5.0/bin/grafana-server 

#Expose Ports
EXPOSE 9090
EXPOSE 9100
EXPOSE 3000
