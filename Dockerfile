FROM python:3.11-slim

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /master_personal
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
WORKDIR /TOM-BOT
COPY . .
CMD ["/bin/bash", "/start.sh"]
