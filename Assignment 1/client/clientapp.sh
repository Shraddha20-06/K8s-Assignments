wget "http://192.168.0.10/randomfile" -O /client_data/client_file
wget "http://192.168.0.10/md5" -O /client_data/client_md5
md5sum /client_data/client_file | awk {'print $1'} > /client_data/generated_md5sum

x=`diff -s /client_data/generated_md5sum /client_data/client_md5 | awk {'print $1'}`
if [ "$x" == "Files" ]
then
   echo "Files are same"
else
   echo "ERROR - MD5 did not match"
fi


