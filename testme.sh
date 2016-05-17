#!/usr/bin/env bash
docker build -t service1 .
docker run -d -p 4567:80 service1
py.test
