FROM grafana/grafana
MAINTAINER John Whitley
COPY prometheus.yaml /etc/grafana/provisioning/datasources/
COPY defaultdash.yaml /etc/grafana/provisioning/dashboards/
CMD mkdir /var/lib/grafana/dashboards/
COPY defaultdash.json /var/lib/grafana/dashboards/

#Expose Ports
EXPOSE 3000
