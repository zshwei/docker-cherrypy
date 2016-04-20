#!/bin/bash
# docker kill and rm prevent funny errors
docker kill cherrypy > /dev/null 2>&1 
docker rm cherrypy > /dev/null 2>&1 
# build, test, and run the image
docker build -t cherrypy .
docker run cherrypy /testing.sh
docker run -ti --name cherrypy -p 80:80 cherrypy $@
