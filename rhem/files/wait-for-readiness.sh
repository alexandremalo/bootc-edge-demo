if [ "$(cat /var/opt/ready.txt 2>/dev/null)" = "Ready" ]; then
    echo "Ready"
else
    echo "Not Ready"
    exit 1
fi
