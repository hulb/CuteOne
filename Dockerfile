FROM python:latest
Maintainer hulb@live.cn

RUN wget https://github.com/hulb/CuteOne/archive/v1.0.tar.gz && tar -zxf v1.0.tar.gz && cd CuteOne-1.0
RUN pip3 install -r requirements.txt
RUN ln -s /usr/local/python3/bin/uwsgi /usr/bin/uwsgi

