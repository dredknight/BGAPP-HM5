#!/bin/bash

# Start the first process
php-fpm7.4
  
# Start the second process
/usr/sbin/nginx -g 'daemon off;' &
  
# Wait for any process to exit
wait -n
  
# Exit with status of process that exited first
exit $?