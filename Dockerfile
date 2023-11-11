# 使用包含Go运行时的基础镜像
FROM debian:latest 

# 创建镜像内的工作目录
WORKDIR /app

# 将当前目录下的proxyadmin文件复制到镜像的/app目录
COPY proxy-admin /app

# 暴露32080和1080端口
EXPOSE 32080 1080

# 运行proxyadmin
CMD ["./proxy-admin"]
