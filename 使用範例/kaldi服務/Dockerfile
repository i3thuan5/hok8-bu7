FROM i3thuan5/hok8-bu7:latest
COPY --from=i3thuan5/hok8-bu7-kaldi /usr/local/kaldi /usr/local/kaldi
COPY exp /usr/local/kaldi/egs/taiwanese/s5c/exp

RUN apt-get update && apt-get install -y libatlas-base-dev sox libav-tools
RUN ln -s /usr/local/kaldi kaldi
RUN python3 manage.py migrate

