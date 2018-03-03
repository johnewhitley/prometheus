#!/bin/bash
sudo docker build -t my-prometheus .
sudo docker run --name prometheus -it -p 9090:9090 my-prometheus
