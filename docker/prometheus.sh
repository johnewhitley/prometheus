#!/bin/bash
sudo docker build -t my-prometheus .
sudo docker run --name="prometheus" -d -p 9090:9090 my-prometheus
sudo docker exec -it prometheus bash
