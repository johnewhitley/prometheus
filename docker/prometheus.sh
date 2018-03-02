#!/bin/bash
sudo docker build -t my-prometheus .
sudo docker run -d 9900:9090 my-prometheus
