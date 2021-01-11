FROM python:3.9-alpine

RUN apk add --virtual build-deps file make gcc musl-dev libffi-dev build-base libzmq python3 python3-dev zeromq-dev

ADD . /code
WORKDIR /code

RUN pip install -r requirements.txt

CMD ["python","app.py"]
