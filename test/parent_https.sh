#!/bin/sh
docker exec client curl -k -x parentproxy:3128 https://server/hello.html

