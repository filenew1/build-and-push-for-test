# 使用官方的OpenJDK基础镜像
FROM openjdk:8-jdk-slim
# author
MAINTAINER ais
# 设置系统编码为UTF-8
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

# 设置工作目录
WORKDIR /app
# 复制Maven构建产物到容器中
COPY ./target/myArm-0.0.1-SNAPSHOT.jar myArm-0.0.1-SNAPSHOT.jar
# 暴露应用端口
EXPOSE 8080
# 启动应用
ENTRYPOINT ["java", "-jar", "myArm-0.0.1-SNAPSHOT.jar"]