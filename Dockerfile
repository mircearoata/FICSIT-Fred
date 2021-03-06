FROM python:3.8.3

RUN apt-get update -y
RUN apt-get install -y tesseract-ocr

VOLUME /app/config
WORKDIR /app/bot

COPY ./requirements.txt /app
RUN pip install -r ../requirements.txt

COPY . /app

CMD python ./bot.py