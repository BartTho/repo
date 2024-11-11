docker stop test1
docker rm test1
docker image build -t test:1.01.1 .
docker run -d -v code:/app --name test1 test:1.01.1