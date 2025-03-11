/bin/sh -c \
  '
  [ "$(curl -s -o /dev/null -w "%{http_code}" http://localhost:8080)" = "200" ] && \
  echo "Returned 200 OK" || \
  (echo "Did not return 200 OK" && exit 1)
  '
