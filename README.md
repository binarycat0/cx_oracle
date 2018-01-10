## Base
based on image [CENTOS:7](https://hub.docker.com/_/centos/) 

## Tags
**catbinary/cx_oracle:5** (with instantclient11.2 and cx_oracle==5.3)

**catbinary/cx_oracle:6** (with instantclient12.2 and cx_oracle==6.1)

## Source
https://github.com/catbinary/cx_oracle

## Example
https://github.com/catbinary/cx_oracle_example

## Inside the image

### Centos packages
    epel-release
    libaio
    gcc
    python-pip
    python-devel

### oracle instantclient packages
    - instantclient 
        |_ basic
        |_ devel
        |_ sqlplus

### For image catbinary/cx_oracle:5

#### global environment variables
    ENV ORACLE_BASE /usr/lib/oracle/11.2
    ENV ORACLE_HOME /usr/lib/oracle/11.2/client64
    ENV LD_LIBRARY_PATH /usr/lib/oracle/11.2/client64/lib
    ENV TNS_ADMIN $ORACLE_HOME/network/admin

- [pip install cx-Oracle==5.3](http://cx-oracle.readthedocs.io/en/latest/releasenotes.html#version-5-3-march-2017)

### For image catbinary/cx_oracle:6

#### global environment variables
    ENV ORACLE_BASE /usr/lib/oracle/12.2
    ENV ORACLE_HOME /usr/lib/oracle/12.2/client64
    ENV LD_LIBRARY_PATH /usr/lib/oracle/12.2/client64/lib
    ENV TNS_ADMIN $ORACLE_HOME/network/admin

#### cx_oracle module
- [pip install cx-Oracle==6.1](http://cx-oracle.readthedocs.io/en/latest/releasenotes.html#version-6-1-december-2017)
