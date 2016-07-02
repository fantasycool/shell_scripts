# shell_scripts
### shell
grep -nr name .
cat ts.91jkys.com_access.log |grep '2016-06-30' |grep -oE "^.*[[:space:]][[:digit:]]+[[:space:]]\-[[:space:]]2016"|uniq|grep -oE '[[:digit:]]+\.[[:digit:]]+\.[[:digit:]]\.[[:digit:]]'|wc -l
### mysql
create user 'xxx'@'来源机器ip' identified by '密码'；
grant all privileges on crucial.* to 'xxx'@'来源机器ip' with grant options;

### maven
mvn source:jar install

### python
#### install local user
1. wget python.tgz
2.  tar zxvf python.tgz
3.  ./configure --prefix=~/user_local_dir
4.  make | make install
5.  wget http://dev.mysql.com/get/Downloads/Connector-Python/mysql-connector-python-2.1.3.tar.gz
6.  tar zxvf mysql-connector-python-2.1.3.tar.gz
7.  python setup install 
8.  done.
 

