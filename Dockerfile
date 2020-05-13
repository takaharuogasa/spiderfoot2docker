FROM ubuntu:18.04

RUN apt update &&\
    apt install git python3-pip -y

RUN git clone https://github.com/smicallef/spiderfoot
WORKDIR /spiderfoot
RUN pip3 install -r requirements.txt

EXPOSE 5001
CMD ["/usr/bin/python3.6", "sf.py","-l", "0.0.0.0:5001"]
