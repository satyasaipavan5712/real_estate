FROM python:3.8

ENV PYTHONDONTWRITEBYTECODE 1 
ENV PYTHONUNBUFFERED 1


RUN apt-get update && \
    apt-get install -y --no-install-recommends gcc libpq-dev


WORKDIR /app


COPY requirement.txt/ /app/
RUN pip install --no-cache-dir -r requirement.txt


COPY . /app/

EXPOSE 8000


 