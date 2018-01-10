FROM centos:7

RUN yum install -y epel-release
RUN yum install -y libaio \
    gcc \
    python-pip \
    python-devel

RUN yum clean all

WORKDIR /tmp/instantclient11.2
ADD ./instantclient/11.2 /tmp/instantclient11.2

RUN rpm -Uvh *.rpm
RUN echo "/usr/lib/oracle/11.2/client64/lib" >/etc/ld.so.conf.d/oracle.conf

RUN rm -rf -r -f /tmp/instantclient11.2

ENV ORACLE_BASE /usr/lib/oracle/11.2
ENV ORACLE_HOME /usr/lib/oracle/11.2/client64
ENV LD_LIBRARY_PATH /usr/lib/oracle/11.2/client64/lib
ENV TNS_ADMIN $ORACLE_HOME/network/admin

# cx_Oracle==5.3
RUN pip install cx-Oracle==5.3