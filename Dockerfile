FROM python:3.10-slim

WORKDIR /app

RUN apt-get update
RUN apt-get install -y xvfb fluxbox x11vnc dos2unix
RUN python -m pip install --upgrade pip setuptools

COPY ./requirements.txt /app

RUN pip install -r requirements.txt

COPY . /app
RUN find /app -name '*.sh' | xargs dos2unix

EXPOSE 5900

CMD ["sh", "/app/utils/run.sh"]