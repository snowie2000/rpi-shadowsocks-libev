基于 mips 脚本改写。
Based on mips shadowsocks-libev compiling script. Inspired by script from imMMX: https://github.com/imMMX/ubnt-mips-shadowsocks-libev

为全版本的树莓派交叉编译 shadowsocks-libev  

Cross complie shadowsocks for raspberry pi (all versions)  

## 下载  Download
编译好的二进制文件请前往 [release](https://github.com/snowie2000/rpi-shadowsocks-libev/releases/) 下载  

You can download pre-complied file here

## 使用方法  Installation

1. 安装 Docker  Install Docker  
  ```curl -sSL https://get.docker.com/ | sh ``` 
  
2. 克隆仓库   Clone the git repo  
  ```git clone https://github.com/snowie2000/rpi-shadowsocks-libev.git```  
  
3. build 镜像   Build the docker image  
  ```docker build --tag rpi-shadowsocks-libev .```  
  
4. 启动容器  Start the container  
  ```docker run -idt --name rpi-shadowsocks-libev rpi-shadowsocks-libev```
  
5. 从容器中拷贝  Copy from docker container  
  ```docker cp rpi-shadowsocks-libev:/opt/ss-arm/ss-bin .```
  
## arm 与 arm64
由 ENV 参数 ARCHITECH 判断，默认生成 arm64，需要 arm 在第 4 步的时候替换成下面的命令  

Controlled by ENV ARCHITECH, default build arm64, you can set ARCHITECH="arm" to build arm file.

  ```docker run -idt --name rpi-shadowsocks-libev -e ARCHITECH="arm" rpi-shadowsocks-libev```


