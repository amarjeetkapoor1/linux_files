#!/usr/bin/python

import smtplib
import sys


server = smtplib.SMTP('smtp.gmail.com')
server.starttls()
server.login(sys.argv[1],sys.argv[2])
 
msg = "Your Account on experimental is going to be deleted after three days"
server.sendmail(sys.argv[1],sys.argv[3], msg)
server.quit()

