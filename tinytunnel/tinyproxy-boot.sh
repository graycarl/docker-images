#!/bin/bash
exec 2>&1
source /etc/envvars
exec /usr/sbin/tinyproxy -d
