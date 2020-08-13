FROM python:2.7-alpine

COPY eds_server/main.py /main.py
COPY eds_server/requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

EXPOSE 8080

ENTRYPOINT [ "python", "/main.py" ]