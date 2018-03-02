!/bin/#!/usr/bin/env bash
docker build -t my-prometheus
docker run -p 90:90 my-prometheus
