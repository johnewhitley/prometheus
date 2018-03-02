FROM prom/prometheus
ADD prometheus.yml /etc/prometheus/
RUN wget https://github.com/prometheus/node_exporter/releases/download/v0.15.2/node_exporter-0.15.2.linux-amd64.tar.gz \
    && tar xvfz node_exporter-*.tar.gz \
    && cd node_exporter-* \
    && ./node_exporter
EXPOSE 9100
