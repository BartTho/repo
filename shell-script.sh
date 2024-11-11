#! /bin/bash
echo "Hallo Wereld"
echo "Build ID = ${BUILD_ID}"
echo "Build URL = ${BUILD_URL}"
echo "Dit is een demo !" > test${BUILD_ID}.txt
ls -ltr
pwd