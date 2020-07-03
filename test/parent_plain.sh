#!/bin/sh
docker exec client curl -x parentproxy:3128 http://server/hello.html

