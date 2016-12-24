#!/bin/bash

CALLING_PATH=`pwd -P`
SCRIPT_PATH="`dirname \"$0\"`"
SRC_PATH=${SCRIPT_PATH}/src
MAIN_SCRIPT="./main.sh"

echo '--------------------------------------------------------------------------------'
echo 'Title: Hopfield Network: Cube Aproximation'
echo 'Subject: Data Mining'
echo 'Author: Sergio García Prado (garciparedes.me)'
echo '--------------------------------------------------------------------------------'

cd ${SRC_PATH}
  bash ${MAIN_SCRIPT}
cd ${CALLING_PATH}

echo '--------------------------------------------------------------------------------'
