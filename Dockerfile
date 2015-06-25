FROM debian:jessie
MAINTAINER Matt Bentley <mbentley@mbentley.net>

RUN (apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y wget unzip openjdk-7-jre-headless)
RUN (wget "http://s3.amazonaws.com/ec2-downloads/ec2-api-tools.zip" -O /tmp/ec2-api-tools.zip &&\
  mkdir /usr/local/ec2 &&\
  unzip /tmp/ec2-api-tools.zip -d /usr/local/ec2 &&\
  rm /tmp/ec2-api-tools.zip &&\
  ln -s $(ls /usr/local/ec2) /usr/local/ec2/ec2-api-tools)
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre EC2_HOME=/usr/local/ec2/ec2-api-tools PATH=$PATH:/usr/local/ec2/ec2-api-tools/bin
ADD entrypoint.sh /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD ["/bin/bash"]
