docker build -t docker:hw2 .
docker run -it -v /var/run/docker.sock:/var/run/docker.sock docker:hw2
