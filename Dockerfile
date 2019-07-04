FROM ubuntu:16.04
#FROM python:3.8.0a4-alpine3.9 as base

RUN apt-get update
RUN apt-get -y install python3 python3-pip git wget
#RUN apt-get -y install vim

COPY requirements.txt /home/workspace/requirements.txt
COPY credential /root/.aws/credentials
EXPOSE 8090
RUN pip3 install --upgrade pip
#RUN pip install --no-cache-dir -r /home/workspace/requirements.txt
RUN pip3 install  --no-cache-dir -r /home/workspace/requirements.txt

WORKDIR /home/workspace

#RUN wget "https://github.com/mozilla/geckodriver/releases/download/v0.23.0/geckodriver-v0.23.0-linux64.tar.gz"
#RUN tar -xvzf geckodriver-v0.23.0-linux64.tar.gz
#RUN mv geckodriver /usr/local/bin/geckodriver
#RUN chmod a+x /usr/local/bin/geckodriver
#RUN apt-get install -y firefox

