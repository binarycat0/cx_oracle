FROM centos:7

RUN yum install -y epel-release; yum -y clean all
RUN yum install -y libaio \
    gcc \
    python-pip \
    python-devel; yum -y clean all

RUN mkdir /opt/instantclient11.2
COPY *.rpm /opt/instantclient11.2/

RUN rpm -Uvh /opt/instantclient11.2/*.rpm; yum -y clean all
RUN rm -rf -r -f /opt/instantclient11.2

RUN echo "/usr/lib/oracle/11.2/client64/lib" >/etc/ld.so.conf.d/oracle.conf

ENV ORACLE_BASE /usr/lib/oracle/11.2
ENV ORACLE_HOME /usr/lib/oracle/11.2/client64
ENV LD_LIBRARY_PATH /usr/lib/oracle/11.2/client64/lib
ENV TNS_ADMIN $ORACLE_HOME/network/admin

# cx_Oracle==5.3
RUN pip install cx-Oracle==5.3