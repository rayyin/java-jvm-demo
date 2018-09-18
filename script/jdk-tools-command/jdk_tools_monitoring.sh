!#/bin/bash

# JVM process status - JPS
jps
jps -m
jps -l
jps -v

# JVM statistics monitoring - JSTAT
jstat -class 12345 5000 10
jstat -compiler 12345 5000 10
jstat -gc 12345 5000 10
jstat -gcutil 12345 5000 10

# JVM statistics monitoring daemon - JSTATD
#jstatd.all.policy
#grant codebase "file:${java.home}/../lib/tools.jar" {
#permission java.security.AllPermission;
#};
jstatd -J-Djava.security.policy=jstatd.all.policy -p 9999  #Open with java vitual VM