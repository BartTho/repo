#!/bin/bash
docker stop dummy1
docker rm dummy1
#docker container stop $(docker container ls –aq)
#docker container rm $(docker container ls –aq)
docker image build -t test:1.01.1 .
#docker rmi $(docker images ls -aq)
#docker run -d -v code:/app --name test1 test:1.01.1
#docker create --name dummy1 test:1.01.1
docker run -d --name dummy1 test:1.01.1
docker cp dummy1:/app/sinus.png .
#docker ps -a
#docker exec -it dummy1 /bin/bash

#docker rm -f dummy