!#/bin/bash

# stack trace - JSTACK
jstack 12345
jstack -F 12345
jstack -m 12345

# memory map - JMAP
jmap 12345
jmap -heap 12345
jmap -histo 12345
jmap -finalizerinfo 12345
jmap -dump:format=b,file=heapdump.hprof 12345  #Open with java vitual VM

# Java heap analysis tool - JHAT
jhat heapdump.hprof  #start http server on 7000

# Configuration info
jinfo 12345

# Java Monitoring and Management Console
jconsole 21788