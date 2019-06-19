FROM i3thuan5/hok8-bu7
MAINTAINER i3thuan5

COPY --from=i3thuan5/tauphahji_bunpun \
  /usr/local/hok8-bu7/su.txt \
  /usr/local/hok8-bu7/語言模型資料夾/語言模型.lm \
  ./服務資料/台語/標漢羅/
RUN cat ./服務資料/台語/標漢羅/su.txt | grep -v 無法度匯入標點 | gzip > ./服務資料/台語/標漢羅/辭典.txt.gz

RUN pip install --upgrade https://github.com/i3thuan5/tai5-uan5_gian5-gi2_hok8-bu7/archive/PiauHanLoPun--khui.zip #4  
RUN echo PYRO4_TSU2_KI1 = \'pyro4\' >> hok8_bu7/settings.py

CMD python manage.py 載入標漢羅模型 taigi-hanlo

