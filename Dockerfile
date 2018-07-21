FROM i3thuan5/tai5-uan5_gian5-gi2_kang1-ku7:latest
MAINTAINER i3thuan5

RUN pip3 install tai5-uan5_gian5-gi2_hok8-bu7

WORKDIR /usr/local/
RUN git clone https://github.com/i3thuan5/hok8-bu7.git

WORKDIR /usr/local/hok8-bu7

RUN mkdir -p /usr/local/hok8-bu7/sqlite3/
RUN ln -s /usr/local/hok8-bu7/sqlite3/db.sqlite3 db.sqlite3

RUN echo PYRO4_TSU2_KI1 = \'pyro4\' >> hok8_bu7/settings.py
RUN echo HUAN1_IK8_TSU2_KI1 = \'huan1ik8\' >> hok8_bu7/settings.py
RUN echo RABBIT_MQ_TSU2_KI1 = \'rabbitmq\' >> hok8_bu7/settings.py

RUN python3 manage.py migrate
EXPOSE 8000
