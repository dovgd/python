FROM ubuntu:latest

MAINTAINER Dovgopoliy Denis

LABEL Description="docker image python"

RUN apt update && apt install python -y && apt install python3-pip -y \ 
&& pip3 install websocket \ 
&& pip3 install websockets

COPY ./server.py /

#WORKDIR /srv

EXPOSE 5678

CMD ["python3", "/server.py"]
