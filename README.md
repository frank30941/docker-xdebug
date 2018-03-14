# docker-xdebug
# Keyword visual studio code VSCODE php docker xdebug

## 主題:
### 使用 docker 跑 Xdebug 容器，再以 VSCODE 偵錯開發

## 準備工具:
-docker: >=17.09.1
-docker images:
-php:7.1-apache、marisdb:latest、phpmyadmin/phpmyadmin:latest
-VSCODE: 1.21.0 (筆者當前使用的)，載入PHP及docker相關插件(主要是PHP Debug)
-OS:Windows10(Hyper-V) or Mac 都可

## 設定:
### 步驟1
-滑鼠右鍵工作列右邊的小圖案 docker->settings->Shares Drives
-選擇給 docker volumes 存放的硬碟
###步驟2
-將docker-xdebug clone 到本機端，以VSCODE開啟 docker-xdebug 目錄資料夾
-點開編輯 docker-xdebug\php7-xdebug\xdebug.ini
-**重點在這**
-請依你的本機系統來選擇，預設是 Windows
```php
zend_extension=xdebug.so
xdebug.remote_enable=1
xdebug.remote_handler=dbgp
xdebug.remote_port=9000
xdebug.remote_autostart=1
xdebug.remote_connect_back=0
xdebug.idekey=VSCODE
#xdebug.remote_log=/tmp/xdebug.log
#for windows 10 hyper v
xdebug.remote_host=docker.for.win.localhost
#for mac osx
#xdebug.remote_host=docker.for.mac.localhost
```
### 步驟3
-開啟終端機
--Windows: cmd or PowerShell
--Mac: Terminal
#### 指令:
```shell
docker-compose up -d
```
第一次會先建立有 xdebug 的 image，會花很多時間，這是時候就來沖杯咖啡吧~
### 步驟4
-建立完成並且容器開始運作後
-開啟 VSCODE 的 debug 功能
-點擊左上邊的綠色箭頭，開始監聽~
-在開啟網頁 [http://localhost/](http://localhost/ "http://localhost/")
# 開始除蟲啦~~~
