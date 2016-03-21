SHOW_DATA=$1
cp /etc/issue.net /etc/issue.net.bak
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak
cat /etc/ssh/sshd_config.bak |sed 's/#Banner \/etc\/issue.net/Banner \/etc\/issue.net/' > /etc/ssh/sshd_config
echo "=============================================" > /etc/issue.net
echo "\t\t"$SHOW_DATA >> /etc/issue.net
echo "=============================================" >> /etc/issue.net
service ssh restart
