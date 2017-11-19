# Kafka-Docker-Container
This repo is my first attempt to learn how to dockerize.

# Instructions to build the container

docker build -t custom/kafka -f Dockerfile .

# Instructions to run the container interactively

docker run -it custom/kafka /bin/sh
