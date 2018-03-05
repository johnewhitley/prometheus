#!/bin/bash
sudo docker build -t my-grafana ~/prometheus/docker/grafana
sudo docker run --name grafana -d -p 3000:3000 grafana/grafana
