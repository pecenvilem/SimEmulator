FROM python:3.10

WORKDIR /app

RUN apt-get update
RUN apt-get install -y xvfb fluxbox x11vnc
RUN python -m pip install --upgrade pip setuptools

COPY ./requirements.txt /app

RUN pip install -r requirements.txt

COPY . /app

EXPOSE 5900

CMD ["/app/run.sh"]
#CMD ["python"]