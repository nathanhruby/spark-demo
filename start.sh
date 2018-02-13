#!/bin/bash
if [ ! -f access.log ] ; then
    gunzip access.log.gz
fi
docker run -it --rm -p 8888:8888 -v `pwd`:/home/jovyan/work jupyter/pyspark-notebook
