FROM i3thuan5/hok8-bu7:latest

RUN apt-get update && apt-get install -y g++ libatlas-base-dev sox libav-tools 

VOLUME /usr/local/kaldi
RUN ln -s /usr/local/kaldi kaldi
RUN echo "KALDI_KUE3_TING5 = 'tso3'"  >> hok8_bu7/settings.py
