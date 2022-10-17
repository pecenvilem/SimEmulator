FROM python:3.10

WORKDIR /app

RUN apt-get update
RUN apt-get install -y xvfb x11vnc

RUN python -m pip install --upgrade pip setuptools

COPY ./requirements.txt /app

RUN pip install -r requirements.txt

COPY . /app

EXPOSE 5900

#MQTT
EXPOSE 1883

#MYSQL
EXPOSE 3306

#CMD ["x11vnc", "-create", "-forever"]
CMD ["/app/run.sh"]
#CMD ["python"]