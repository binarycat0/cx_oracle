## binarycat/cx_oracle container

- ### [Source](https://github.com/catbinary/cx_oracle)
- ### [Example](https://github.com/catbinary/cx_oracle_example)

## inside conteiner

### centos packages
```
epel-release
python-pip
libaio
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
ENV ORACLE_BASE /usr/lib/oracle/12.2
ENV ORACLE_HOME /usr/lib/oracle/12.2/client64
ENV LD_LIBRARY_PATH /usr/lib/oracle/12.2/client64/lib
ENV TNS_ADMIN $ORACLE_HOME/network/admin
```

### cx_oracle module
- [pip install cx-Oracle==6.0.2](https://pypi.python.org/pypi/cx_Oracle/)

