FROM centos:latest
MAINTAINER John Whitley
RUN yum -y install wget
RUN wget "https://github.com/prometheus/prometheus/releases/download/0.16.0/prometheus-0.16.0.linux-amd64.tar.gz" 
RUN tar -xvzf /prometheus-0.16.0.linux-amd64.tar.gz
RUN /prometheus-0.16.0.linux-amd64/prometheus -version

COPY prometheus.yml /etc/prometheus/prometheus.yml
EXPOSE 9090
EXPOSE 9100
