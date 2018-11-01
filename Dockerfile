ARG BASE_CONTAINER=jupyter/minimal-notebook:latest
FROM $BASE_CONTAINER

LABEL maintainer="gzfarmer <gzfarmer@gmail.com>"

RUN mkdir -p /home/jovyan/work/fooltrader/data
COPY . /home/jovyan/work/fooltrader/

RUN cd /home/jovyan/work/fooltrader \
 && pip install --upgrade pip \
 && pip install -r requirements.txt \
    -i http://pypi.douban.com/simple --trusted-host pypi.douban.com
