FROM ubuntu:20.04

RUN apt-get update && apt-get install -y python3 pip

#RUN apt-get update
#RUN apt-get install -y python3 pip
RUN pip install flask

COPY app.py /opt/app.py

ENTRYPOINT FLASK_APP=app.py flask run --host=0.0.0.0 --port=8080
