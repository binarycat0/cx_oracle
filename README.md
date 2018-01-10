## tags version
- 5 for cx_oracle 5 and instantclient11.2
- 6 for cx_oracle 6 and instantclient12.2

## binarycat/cx_oracle container

- ### [Source](https://github.com/catbinary/cx_oracle)
- ### [Example](https://github.com/catbinary/cx_oracle_example)

## inside conteiner

### centos packages
```
epel-release
libaio
gcc
python-pip
python-devel
```

### oracle instantclient packages
```
- instantclient 
--* 11.2
---- basic
---- devel
---- sqlplus

--* 12.2
---- basic
---- devel
---- sqlplus
```

### global environment variables
```
ENV ORACLE_BASE /usr/lib/oracle/<version>
ENV ORACLE_HOME /usr/lib/oracle/<version>/client64
ENV LD_LIBRARY_PATH /usr/lib/oracle/<version>/client64/lib
ENV TNS_ADMIN $ORACLE_HOME/network/admin
```

### cx_oracle module
- [pip install cx-Oracle==6.1](https://pypi.python.org/pypi/cx_Oracle/)

- [pip install cx-Oracle==5.3](https://pypi.python.org/pypi/cx_Oracle/)
