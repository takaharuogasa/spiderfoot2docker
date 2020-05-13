FROM ubuntu:18.04

RUN apt update &&\
    apt install git python-pip python3-pip -y

RUN git clone https://github.com/smicallef/spiderfoot
RUN pip3 install -r /spiderfoot/requirements.txt

EXPOSE 5001
WORKDIR /spiderfoot
CMD ["/usr/bin/python3.6", "sf.py","-l", "0.0.0.0:5001"]
