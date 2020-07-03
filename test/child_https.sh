#!/bin/sh
docker exec client curl -k -x childproxy:3128 https://server/hello.html

