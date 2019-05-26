
#!/bin/bash

fuser=$1
duser=$2
cdomain=$3
rc=$4

echo > /etc/opensips/fraudmail.txt
echo "From:sbc@yulsip.com" > /etc/opensips/fraudmail.txt
echo "Subject:Fraud calls Detected" >> /etc/opensips/fraudmail.txt
echo "WARNING!!!" >> /etc/opensips/fraudmail.txt
echo "Fraud calls detected for user $fuser rc= $4 to destination num $duser and client domain $cdomain" >> /etc/opensips/fraudmail.txt
echo "IP Banned. Client is disabled for security reason" >> /etc/opensips/fraudmail.txt
echo "Best regards" >> /etc/opensips/fraudmail.txt
echo "" >> /etc/opensips/fraudmail.txt
echo "" >> /etc/opensips/fraudmail.txt
echo "" >> /etc/opensips/fraudmail.txt
echo "----------------------------" >> /etc/opensips/fraudmail.txt
echo "YulSIP Communications" >> /etc/opensips/fraudmail.txt
echo "e-mail: support@yulsip.com" >> /etc/opensips/fraudmail.txt
echo "web: https://www.yulsip.com" >> /etc/opensips/fraudmail.txt

