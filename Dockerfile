from centos:centos7

MAINTAINER Jack Camier

ENV LANG=C.UTF-8

COPY requirements.txt .


RUN yum -y upgrade \
 && yum -y install wget git vim \
 && yum -y install epel-release \
 && yum -y install centos-release-scl \
 && yum -y install python36 python36-devel python36-setuptools \
 && easy_install-3.6 pip

RUN pip install -r requirements.txt



