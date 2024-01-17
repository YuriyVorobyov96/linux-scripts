auditctl -w /etc/passwd -p rwax -k act_passwd &&
echo "create audit on /etc/passwd dir" ||
echo "failed to create audit on /etc/passwd dir"