FROM centos:7

RUN yum install -y epel-release
RUN yum install -y python-pip
RUN yum install -y libaio

RUN yum clean all

COPY ./ora /opt/ora

RUN rpm -Uvh /opt/ora/*.rpm
RUN echo "/usr/lib/oracle/12.2/client64/lib" >/etc/ld.so.conf.d/oracle.conf

ENV ORACLE_BASE /usr/lib/oracle/12.2
ENV ORACLE_HOME /usr/lib/oracle/12.2/client64
ENV LD_LIBRARY_PATH /usr/lib/oracle/12.2/client64/lib
ENV TNS_ADMIN $ORACLE_HOME/network/admin

RUN pip install --upgrade pip
RUN pip install cx-Oracle==6.0.2