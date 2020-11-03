## コマンド実行
### Pod
<pre>
$ kubectl exec -it t03 /bin/sh
# pwd
 /
 # ls -l
 total 68
 drwxr-xr-x   2 root root 4096 Apr 26  2018 bin
 drwxr-xr-x   2 root root 4096 Feb 23  2018 boot
 drwxr-xr-x   5 root root  360 Apr 15 00:01 dev
 drwxr-xr-x   1 root root 4096 Apr 15 00:01 etc
 drwxr-xr-x   2 root root 4096 Feb 23  2018 home
 drwxr-xr-x   1 root root 4096 Apr 26  2018 lib
 drwxr-xr-x   2 root root 4096 Apr 26  2018 lib64
 drwxr-xr-x   2 root root 4096 Apr 26  2018 media
 drwxr-xr-x   2 root root 4096 Apr 26  2018 mnt
 drwxr-xr-x   2 root root 4096 Apr 26  2018 opt
 dr-xr-xr-x 109 root root    0 Apr 15 00:01 proc
 drwx------   2 root root 4096 Apr 26  2018 root
 drwxr-xr-x   1 root root 4096 Apr 15 00:01 run
 drwxr-xr-x   2 root root 4096 Apr 26  2018 sbin
 drwxr-xr-x   2 root root 4096 Apr 26  2018 srv
 dr-xr-xr-x  12 root root    0 Apr 15 00:01 sys
 drwxrwxrwt   1 root root 4096 Apr 30  2018 tmp
 drwxr-xr-x   1 root root 4096 Apr 26  2018 usr
 drwxr-xr-x   1 root root 4096 Apr 26  2018 var
# 
# cat /usr/lib/os-release
PRETTY_NAME="Debian GNU/Linux 9 (stretch)"
NAME="Debian GNU/Linux"
VERSION_ID="9"
VERSION="9 (stretch)"
ID=debian
HOME_URL="https://www.debian.org/"
SUPPORT_URL="https://www.debian.org/support"
BUG_REPORT_URL="https://bugs.debian.org/"
</pre>
