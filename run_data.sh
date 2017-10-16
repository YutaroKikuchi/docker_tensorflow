#!/bin/bash

if [ $# -ne 2 ] ; then
  echo usage : 2 parameters are required
  exit 1
fi

DIRECTORY=`basename $1`
DIRPATH=$2

docker run -ti --name ${DIRECTORY} ${DIRECTORY}

docker cp ${DIRECTORY}:${DIRPATH} $PWD/data/

docker rm ${DIRECTORY}