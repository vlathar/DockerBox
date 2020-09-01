FROM ubuntu
MAINTAINER Vishal Lathar (whitewalker5518@gmail.com)
RUN apt-get update
RUN apt-get install apt-utils -y
RUN apt-get upgrade -y
RUN apt-get install -y python3
RUN apt-get install -y gcc
RUN apt-get install -y g++

RUN mkdir /file
WORKDIR /file
COPY ./program /file
RUN bash -i
CMD sudo g++ hello.cpp
CMD ./a.out


