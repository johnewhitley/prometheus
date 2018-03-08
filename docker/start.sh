#!/bin/bash
containercheck() {
#Check for prometheus
  if [[ -n "$(sudo docker ps -q -f name=prometheus)" ]]; then
    echo "Prometheus Container is already running."
  else
    echo "Running clean up on Prometheus."
    sudo docker rm prometheus
    # Call to build and run container
    echo "Building and starting Prometheus Container"
    /bin/bash ~/prometheus/docker/prometheus/prometheus.sh
  fi
#Check for grafana
  if [ -n "$(sudo docker ps -q -f name=grafana)" ]; then
    echo "Grafana Container is already running."
  else
    echo "Running clean up on Grafana."
    sudo docker rm grafana
    # Call to build and run container
    echo "Building and starting Grafana Container."
    /bin/bash ~/prometheus/docker/grafana/grafana.sh
    echo "Grafana Container is now up."
  fi
}


#Main
containercheck
