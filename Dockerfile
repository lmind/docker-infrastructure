FROM centos:7.6.1810

RUN \
    yum install git lrzsz unzip python3 python3-pip -y \
    && yum clean all \
    && rm -rf /var/cache/yum

