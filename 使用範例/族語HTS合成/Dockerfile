FROM i3thuan5/tai5-uan5_gian5-gi2_kang1-ku7:tsuan
MAINTAINER i3thuan5

ARG INDIGENOUS

RUN apt-get update && apt-get install -y libav-tools

WORKDIR /opt/
RUN git clone https://github.com/i3thuan5/hok8-bu7.git

WORKDIR /opt/hok8-bu7
RUN python3 manage.py migrate
RUN python3 manage.py 族語辭典0下載 ${INDIGENOUS}
RUN python3 -a manage.py 族語辭典1轉檔 ${INDIGENOUS}
RUN python3 -a manage.py 族語辭典2匯入 ${INDIGENOUS}
RUN python3 manage.py 訓練HTS ${INDIGENOUS} 族語辭典

# docker build --build-arg INDIGENOUS=Pangcah .