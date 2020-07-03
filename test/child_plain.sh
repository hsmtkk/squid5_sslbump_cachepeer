#!/bin/sh
docker exec client curl -x childproxy:3128 http://server/hello.html

