#!/bin/sh
ulimit -c unlimited
echo '/tmp/core.%h.%e.%t' > /proc/sys/kernel/core_pattern

squid=/usr/local/squid

touch ${squid}/var/logs/access.log ${squid}/var/logs/cache.log
chown -R nobody:nogroup ${squid}/var/logs

${squid}/libexec/security_file_certgen -c -s ${squid}/var/cache/squid/ssl_db -M 4MB
chown -R nobody:nogroup ${squid}/var/cache/squid

${squid}/sbin/squid
tail -F ${squid}/var/logs/access.log ${squid}/var/logs/cache.log

