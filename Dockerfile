FROM python:latest
Maintainer hulb@live.cn

WORKDIR /www/wwwroot/

RUN wget https://github.com/hulb/CuteOne/archive/v1.0.tar.gz && tar -zxf v1.0.tar.gz && mv -f ./CuteOne-1.0/* . && cd CuteOne && pip3 install -r requirements.txt
RUN ln -s /usr/local/python3/bin/uwsgi /usr/bin/uwsgi

ENTRYPOINT ["/usr/bin/uwsgi","--ini uwsgi.ini"]
