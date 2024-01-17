auditctl -e 1 &&
auditctl -b 500 &&
echo "audit start" ||
echo "audit failed to start"
