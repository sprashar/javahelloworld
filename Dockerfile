FROM java:8
MAINTAINER EGN <sandip.prashar@loblaw.ca>
COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
RUN mkdir bin
ENV FOO bar

RUN javac -d bin src/HelloWorld.java

RUN apt-get update && apt-get install -y vim

ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]

RUN date>date
