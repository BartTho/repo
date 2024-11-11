#Deriving the latest base image
FROM python:latest
#Labels as key value pair
LABEL Maintainer="bart.thonissen@thomasmore.be"
# Any working directory can be chosen as per choice like '/' or '/home' etc
# i have chosen /usr/app
WORKDIR /app
COPY /code/graffiek.py .
COPY /code/ .

RUN pip install -r requirements.txt
RUN python /app/graffiek.py
#CMD instruction should be used to run the software
#contained by your image, along with any arguments.
#ENTRYPOINT ["tail"]
#CMD ["python", "/apt/graffiek.py"]
#CMD ["tail", "-f", "/dev/null"]