#!/bin/bash

MYIP="192.168.200.3"


case "$1" in
create)
        docker run -d \
            -p $MYIP:80:8080 \
            --name s3proxy \
            bn0ir/docker-s3proxy
        exit 0
        ;;
start)
        docker start s3proxy
        exit 0
        ;;
stop)
        docker stop s3proxy
        exit 0
        ;;
destroy)
        docker rm s3proxy
        exit 0
        ;;
*)
        echo "Usage: s3proxy.sh {start|stop|create|destroy}"
        exit 1
esac
exit 0
