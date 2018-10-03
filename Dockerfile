FROM i3thuan5/hok8-bu7:latest as ki1tshoo2
MAINTAINER i3thuan5

RUN pip3 install tai5-uan5_gian5-gi2_hok8-bu7 hue7jip8 tw01 twisas

RUN pip3 install --upgrade https://github.com/i3thuan5/tai5-uan5_gian5-gi2_hok8-bu7/archive/master.zip

RUN   git config --global user.email "sui@i3thuan5" && \
  git config --global user.name "i3thuan5"

RUN git stash
RUN git pull
RUN git checkout kaldi
RUN git stash apply


FROM ki1tshoo2 as tsau2_pian7sik4
#COPY --from=gotw/kaldi-ihc /usr/local/kaldi /usr/local/kaldi
#COPY exp /usr/local/kaldi/egs/taiwanese/s5c/exp

RUN apt-get update && apt-get install -y libatlas-base-dev sox libav-tools

VOLUME /usr/local/kaldi
RUN ln -s /usr/local/kaldi kaldi
RUN apt-get install -y g++
RUN echo "KALDI_KUE3_TING5 = 'tso3'"  >> hok8_bu7/settings.py
