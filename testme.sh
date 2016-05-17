#!/usr/bin/env bash
# Run docker
docker build -t service1 .
docker run -d -p 4567:80 service1
# Run tests
py.test
