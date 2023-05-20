cat /proc/$(cat /var/run/nginx.pid)/limits
## OR ##
grep -i 'Max open files' /proc/$(cat /var/run/nginx.pid)/limits

sudo apt install hey

http Benchmarker
hey -n 2000 -c 100
2000 reqs
100 concurrent per rqs 
