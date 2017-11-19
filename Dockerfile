FROM ubuntu:14.04
RUN \
  cd /tmp &&\
  apt-get -y update && \
  apt-get -y install default-jre && \
  apt-get -y install zookeeperd && \
  apt-get -y install wget && \
  apt update && \
  wget --no-check-certificate "http://mirror.cc.columbia.edu/pub/software/apache/kafka/0.8.2.1/kafka_2.11-0.8.2.1.tgz" -O kafka.tgz && \
  mkdir -p -m 700 /kafka && \
  cd /kafka && \
  tar -xvzf /tmp/kafka.tgz --strip 1;
 
CMD ["ls","-l","/kafka"]

EXPOSE 9092
