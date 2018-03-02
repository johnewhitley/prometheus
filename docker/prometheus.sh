#!/bin/bash
sudo docker build -t my-prometheus .
sudo docker run -d -p 9090:9090 my-prometheus
