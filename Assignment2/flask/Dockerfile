FROM python:3.8-buster

WORKDIR /app

COPY ./flask_app/ .

RUN pip install -r requirements.txt


CMD ["python3", "app.py"]
