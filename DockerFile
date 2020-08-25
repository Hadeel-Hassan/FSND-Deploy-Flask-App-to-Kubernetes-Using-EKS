FROM python:stretch

RUN mkdir /app
COPY main.py /app
COPY requirements.txt /app

WORKDIR /app

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

ENTRYPOINT [ "gunicorn", "-b", ":8080", "main:APP" ]
