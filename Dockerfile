FROM python:latest
LABEL Maintainer="bart.thonissen@thomasmore.be"
WORKDIR /app
COPY /code/graffiek.py .
COPY /code/requirements.txt .

RUN pip install -r requirements.txt
RUN python /app/graffiek.py
