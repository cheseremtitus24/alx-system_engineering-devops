root@504686eada44:/# ps -auwx |grep nginx
root       134  0.0  0.0  85916  2784 ?        Ss   11:37   0:00 nginx: master process /usr/sbin/nginx
www-data   135  0.0  0.0  86256  3664 ?        S    11:37   0:00 nginx: worker process
www-data   136  0.0  0.0  86256  3664 ?        S    11:37   0:00 nginx: worker process
www-data   138  0.0  0.0  86256  3664 ?        S    11:37   0:00 nginx: worker process
root       206  0.0  0.0  46936  7320 pts/8    S+   11:44   0:00 vim nginx
root       226  0.0  0.0   8876   764 pts/9    S+   14:02   0:00 grep --color=auto nginx
root@504686eada44:/# grep -i 'Max open files' /proc/$(cat /var/run/nginx.pid)/limits
Max open files            15                   15                   files     
root@504686eada44:/# 

