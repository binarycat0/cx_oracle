FROM centos:7

RUN yum install -y epel-release
RUN yum install -y libaio \
    gcc \
    python-pip \
    python-devel

RUN yum clean all

WORKDIR /opt/instantclient12.2
ADD ./instantclient/12.2 /opt/instantclient12.2

RUN rpm -Uvh /opt/instantclient12.2/*.rpm
RUN rm -rf -r -f /opt/instantclient11.2

RUN echo "/usr/lib/oracle/12.2/client64/lib" >/etc/ld.so.conf.d/oracle.conf

ENV ORACLE_BASE /usr/lib/oracle/12.2
ENV ORACLE_HOME /usr/lib/oracle/12.2/client64
ENV LD_LIBRARY_PATH /usr/lib/oracle/12.2/client64/lib
ENV TNS_ADMIN $ORACLE_HOME/network/admin

RUN pip install --upgrade pip
RUN pip install cx-Oracle==6.1
