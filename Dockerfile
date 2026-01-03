FROM python:3.11-slim

RUN apt update && apt install -y git gcc

WORKDIR /app

COPY requirements.txt .

RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash","start.sh"]
