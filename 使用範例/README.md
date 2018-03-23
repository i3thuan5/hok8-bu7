# Docker範例用法
## 先裝環境
1. 安裝 [docker](https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/)
2. 安裝 [docker-compose](https://docs.docker.com/compose/install/)
3. 設定權限`sudo usermod -aG docker $USER`
4. 裝基本docker

```
docker build -t hok8-bu7 .
```

### 翻譯
```
docker build -f Dockerfile_台華翻譯 
```