cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 1024 | head -n 1 > /server_data/randomfile
md5sum /server_data/randomfile | awk {'print $1'} > /server_data/md5
