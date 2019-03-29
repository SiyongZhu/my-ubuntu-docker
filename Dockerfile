FROM ubuntu:16.04

RUN apt-get update
RUN apt-get -y install python3 python3-pip git wget
RUN apt-get -y install vim
COPY requirements.txt requirements.txt
COPY credential /root/.aws/credentials
EXPOSE 8090
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

#RUN wget "https://github.com/mozilla/geckodriver/releases/download/v0.23.0/geckodriver-v0.23.0-linux64.tar.gz"
#RUN tar -xvzf geckodriver-v0.23.0-linux64.tar.gz
#RUN mv geckodriver /usr/local/bin/geckodriver
#RUN chmod a+x /usr/local/bin/geckodriver
#RUN apt-get install -y firefox

# docker build -t linux_python:2.0 .
