FROM java:8
MAINTAINER Gustavo Mendonca <gustavogmend@gmail.com>

ADD target/hello-world-aws-0.1.0-SNAPSHOT-standalone.jar /srv/hello-world-aws.jar

EXPOSE 8000

CMD ["java", "-jar", "/srv/hello-world-aws.jar"]
