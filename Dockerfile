FROM ubuntu:16.04
MAINTAINER sih4sing5hong5

RUN apt-get update
RUN apt-get install -y python3 virtualenv g++ python3-dev libyaml-dev libxslt1-dev git subversion automake libtool zlib1g-dev libboost-all-dev libbz2-dev liblzma-dev libgoogle-perftools-dev libxmlrpc-c++.*-dev libpq-dev postgresql postgresql-contrib make
RUN apt-get install -y libc6-dev-i386 linux-libc-dev gcc-multilib libx11-dev # libx11-dev:i386 # HTK
RUN apt-get install -y csh # SPTK
RUN apt-get install -y sox rabbitmq-server # Kaldi

RUN apt-get install -y python3-pip
RUN pip3 install --upgrade pip

# Switch locale
RUN locale-gen zh_TW.UTF-8
ENV LC_ALL zh_TW.UTF-8

RUN echo 20180401
RUN pip3 install tai5-uan5_gian5-gi2_hok8-bu7 hue7jip8 tw01 twisas

WORKDIR /usr/local/hok8-bu7
RUN echo 0401:3
RUN pip3 install --upgrade https://github.com/sih4sing5hong5/tai5-uan5_gian5-gi2_hok8-bu7/archive/pyro4%E6%94%B9docker%E7%94%A8.zip

COPY . .
RUN echo PYRO4_TSU2_KI1 = \'pyro4\' >> hok8_bu7/settings.py
RUN echo HUAN1_IK8_TSU2_KI1 = \'huan1ik8\' >> hok8_bu7/settings.py
RUN python3 manage.py migrate
