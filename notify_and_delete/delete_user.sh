#!/bin/bash

# how to run this file

#$./delete_user.sh senders_email_id password_of_email password_of_sql

#content of list file-:
#email_id_of_reciver,reciver_account_name
#email_id_of_reciver1,reciver_account_name2

#and so on 	



#argument 1 is for sender name and agrument 2 is for password of emailid
#argv 3 is for mysql password
#f1 is  email id of user and f2 is name of account

IFs=","
while read f1 f2
do
python email_amar.py $1 $2 $f1
done<list

sleep 3d

# read line one by one from list file
while read f1 f2 
do
mysql -uroot -p$3 -e "drop user '$f2 '@'localhost'"
userdel -r $f2
done<list 
