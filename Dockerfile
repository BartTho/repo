#Deriving the latest base image
FROM python:latest
#Labels as key value pair
LABEL Maintainer="bart.thonissen@thomasmore.be"
# Any working directory can be chosen as per choice like '/' or '/home' etc
# i have chosen /usr/app
WORKDIR /app
COPY /code/graffiek.py .
COPY /code/requirements.txt .

RUN pip install -r requirements.txt
RUN python /app/graffiek.py
