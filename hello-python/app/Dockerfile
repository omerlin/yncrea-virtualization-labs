FROM python:3.9-slim-buster

RUN mkdir /app
WORKDIR /app
ADD . /app/
RUN pip3 install -r requirements.txt

EXPOSE 5000
CMD ["python", "/app/main.py"]
