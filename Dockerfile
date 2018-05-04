FROM i3thuan5/tai5-uan5_gian5-gi2_kang1-ku7:docker as ki1tshoo2
MAINTAINER i3thuan5

RUN apt-get update
RUN apt-get install -y sox rabbitmq-server # Kaldi

RUN pip3 install tai5-uan5_gian5-gi2_hok8-bu7 hue7jip8 tw01 twisas

WORKDIR /usr/local/
RUN git clone https://github.com/i3thuan5/hok8-bu7.git

WORKDIR /usr/local/hok8-bu7
RUN pip3 install --upgrade https://github.com/i3thuan5/tai5-uan5_gian5-gi2_hok8-bu7/archive/pyro4%E6%94%B9docker%E7%94%A8.zip

RUN echo PYRO4_TSU2_KI1 = \'pyro4\' >> hok8_bu7/settings.py
RUN echo HUAN1_IK8_TSU2_KI1 = \'huan1ik8\' >> hok8_bu7/settings.py
RUN echo RABBIT_MQ_TSU2_KI1 = \'rabbitmq\' >> hok8_bu7/settings.py


FROM ki1tshoo2 as tsau2_wsgi
RUN python3 manage.py migrate
EXPOSE 8000

FROM ki1tshoo2 as tsau2_huan1ik8
COPY 服務資料 服務資料

FROM ki1tshoo2 as tsau2_pian7sik4
RUN echo sui2
