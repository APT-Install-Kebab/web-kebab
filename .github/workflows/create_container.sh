#!/bin/bash

old=$(sudo docker ps -q -f name=kebab-web)

if [ $old ];then
	sudo docker kill $old
fi
sleep .5
sudo docker run --detach --rm -p 80:80 --name kebab-web -t 5f9e7f39dee4 .
