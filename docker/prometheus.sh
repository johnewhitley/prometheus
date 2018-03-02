!/bin/#!/usr/bin/env bash
sudo docker build -t my-prometheus .
sudo docker run -p 90:90 my-prometheus .
