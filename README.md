# 服務範例
本專案是[臺灣言語服務](https://github.com/sih4sing5hong5/tai5-uan5_gian5-gi2_hok8-bu7)的範例，設定檔已設置完成，方便大家直接使用。
詳細說明可看[wiki](https://github.com/sih4sing5hong5/tai5-uan5_gian5-gi2_hok8-bu7/wiki)。

## 使用
```
docker build -t hok8bu7 .
docker run -p 8000:8000 su5-sing3 python3 manage.py runserver 0.0.0.0:8000
```

## 授權
除原始資料外，此檔案庫內語音模型、轉換格式、重新編排的編輯著作權（如果有的話）皆以 CC0 釋出，衍生著作物應以原始資料之授權為準。

程式部份為MIT授權。