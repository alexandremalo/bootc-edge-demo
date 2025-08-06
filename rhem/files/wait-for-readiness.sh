until [ "$(cat /var/opt/ready.txt 2>/dev/null)" = "Ready" ]; do
    echo "content of /var/opt/ready.txt is implying that device is not ready"
    sleep 5
done
