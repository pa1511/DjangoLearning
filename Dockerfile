#Base image
FROM python:3.7-alpine

#General info
MAINTAINER Petar Afric

#Environment settings
ENV PYTHONUNBUFFERED=1

#Create user
RUN adduser -D user

#Requirements
COPY ./requirements.txt ./requirements.txt
RUN pip install -r requirements.txt


#Setup app
RUN mkdir app
WORKDIR /app
COPY ./app /app

#Switch user
USER user
