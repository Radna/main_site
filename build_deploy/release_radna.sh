#!/bin/sh
LOCAL_PKG=/home/ankur/Code/radna_sites/radnaevents.tar.gz
cd /usr/share/nginx/html
tar -czf $LOCAL_PKG radnaevents
scp $LOCAL_PKG root@radna:/usr/share/nginx/html
ssh root@radna 'tar xzf /usr/share/nginx/html/radnaevents.tar.gz -C /usr/share/nginx/html/'
