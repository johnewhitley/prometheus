#!/bin/bash
sudo docker build -t my-prometheus ~/prometheus/docker/prometheus
sudo docker run --name prometheus -d -p 9090:9090 my-prometheus
/bin/bash ~/prometheus/docker/grafana/grafana.sh
