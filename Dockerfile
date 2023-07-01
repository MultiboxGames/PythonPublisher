FROM python:3.10 as py

FROM py as build

COPY requirements.txt /
RUN pip install --prefix=/inst -U -r /requirements.txt

FROM py

ENV USING_DOCKER yes

WORKDIR /app
COPY . /app
CMD python .