FROM python:3.10

WORKDIR .

COPY . .

RUN python -m venv venv
RUN venv\Scripts\activate
RUN python -m pip install --upgrade pip setuptools
RUN pip install -r requirements.txt

CMD ["python", "main.py"]