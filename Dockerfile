FROM centos:latest

RUN yum install -y epel-release
RUN yum install -y python-pip
RUN yum install -y libaio

COPY ./ora /opt/ora

RUN rpm -Uvh /opt/ora/*.rpm
RUN echo "/usr/lib/oracle/12.1/client64/lib" >/etc/ld.so.conf.d/oracle.conf

ENV ORACLE_BASE /usr/lib/oracle/12.1
ENV ORACLE_HOME /usr/lib/oracle/12.1/client64
ENV LD_LIBRARY_PATH /usr/lib/oracle/12.1/client64/lib
ENV TNS_ADMIN $ORACLE_HOME/network/admin

RUN pip install --upgrade pip
WORKDIR /app
ADD requirements.txt /app
RUN pip install -r requirements.txt