
while true;
  do curl -s -o /dev/null --location 'http://localhost/order' \
  --header 'Content-Type: application/json' \
  --data '{
      "order": {
          "id": 1,
          "name": "Glasses",
          "price": 10000
      }
  }'
  sleep 1
  printf '.'
done
