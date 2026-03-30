#!/bin/bash

rm -rf /run/nginx/* /tmp/nginx*
/usr/sbin/nginx -g 'daemon off;' 
