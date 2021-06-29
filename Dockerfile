
# Dockerfile task for practice
# 28.06.2021

FROM ubuntu:18.04

RUN apt-get -yqq update
RUN apt-get -yqq install git
RUN apt-get -yqq install python3
RUN apt-get -yqq install python3-pip
RUN pip3 install --upgrade pip==21.1.3
RUN git clone https://github.com/anfederico/Flaskex

CMD ["/bin/sh", "-c","cd /Flaskex && pip install -r requirements.txt && python3 app.py"]
EXPOSE 80
