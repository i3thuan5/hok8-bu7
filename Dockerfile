FROM ubuntu:16.04
MAINTAINER sih4sing5hong5

RUN apt-get update -qq
RUN apt-get install -y python3 virtualenv g++ python3-dev libyaml-dev libxslt1-dev git subversion automake libtool zlib1g-dev libboost-all-dev libbz2-dev liblzma-dev libgoogle-perftools-dev libxmlrpc-c++.*-dev libpq-dev postgresql postgresql-contrib make 
RUN apt-get install -y libc6-dev-i386 linux-libc-dev gcc-multilib libx11-dev # libx11-dev:i386 # HTK
RUN apt-get install -y csh # SPTK
RUN apt-get install -y sox rabbitmq-server # Kaldi

# Switch locale
RUN locale-gen zh_TW.UTF-8
ENV LC_ALL zh_TW.UTF-8


RUN apt-get install -y python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install tai5-uan5_gian5-gi2_hok8-bu7 hue7jip8 tw01


WORKDIR /usr/local/hok8-bu7
COPY . .
RUN python3 manage.py migrate


# RUN virtualenv --python=python3 venv
# ENTRYPOINT [ “/bin/bash”, “-c” ]
# RUN bash -c 'source venv/bin/activate && pip install --upgrade pip'
# RUN bash -c 'source venv/bin/activate && pip install tai5-uan5_gian5-gi2_hok8-bu7 hue7jip8 tw01'
# RUN bash -c 'ls'
# RUN bash -c 'source venv/bin/activate && python manage.py migrate'

# expose httpd port
# EXPOSE 80
# the command to run
# CMD ["python", "manage.py", "runserver"]
