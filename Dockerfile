FROM python:latest
Maintainer hulb@live.cn

WORKDIR /www/wwwroot

RUN wget https://github.com/hulb/CuteOne/archive/v1.0.tar.gz && tar -zxf v1.0.tar.gz && mv -f CuteOne-1.0 CuteOne && cd CuteOne && pip3 install -r requirements.txt

ENTRYPOINT ["uwsgi","--ini /www/wwwroot/CuteOne/uwsgi.ini"]
