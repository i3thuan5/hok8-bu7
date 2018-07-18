FROM i3thuan5/tai5-uan5_gian5-gi2_kang1-ku7:tsuan
MAINTAINER i3thuan5

WORKDIR /opt/
RUN git clone https://github.com/i3thuan5/hok8-bu7.git

WORKDIR /opt/hok8-bu7
RUN python3 manage.py migrate
RUN python3 manage.py 教典音檔0下載 dropbox
RUN python3 manage.py 教典音檔1轉檔
RUN python3 manage.py 教典音檔2匯入
RUN python3 manage.py 新北市900例句 --匯入幾筆 10
RUN python3 manage.py 訓練HTS 臺語 王秀容
