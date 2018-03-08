#!/bin/bash

checkprometheus() {
  if [ -n "$(sudo docker ps -q -f name=prometheus)" ]; then
    echo "Prometheus Container is already running.\n"
  else
    echo "Running clean up on Prometheus.\n"
    sudo docker rm prometheus
    # Call to build and run container
    echo "Building and starting Prometheus Container\n"
    /bin/bash ~/prometheus/docker/prometheus/prometheus.sh
  fi
}

checkgrafana() {
  if [ -n "$(sudo docker ps -q -f name=grafana)" ]; then
    echo "Grafana Container is already running.\n"
  else
    echo "Running clean up on Grafana.\n"
    sudo docker rm grafana
    # Call to build and run container
    echo "Building and starting Grafana Container.\n"
    /bin/bash ~/prometheus/docker/grafana/grafana.sh
    echo "Grafana Container is now up.\n"
}

#Main
checkprometheus
checkgrafana
