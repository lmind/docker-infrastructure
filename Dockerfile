FROM centos:7.6.1810

# basic package
RUN \
    yum install git lrzsz zip unzip python3 python3-pip -y \
    && yum clean all \
    && rm -rf /var/cache/yum

# pip package
RUN \
    pip3 install --no-cache-dir ansible

RUN \
    localedef -c -f UTF-8 -i zh_CN zh_CN.UTF-8


ENV TZ=Asia/Shanghai LANG=zh_CN.UTF-8
