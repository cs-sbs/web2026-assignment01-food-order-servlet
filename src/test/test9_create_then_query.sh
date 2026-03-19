#!/bin/bash

BASE_URL="http://localhost:8080"

curl -s -X POST $BASE_URL/order \
-d "customer=Charlie" \
-d "food=Noodles" \
-d "quantity=3" > /dev/null

response=$(curl -s $BASE_URL/order/1002)

if [[ "$response" == *"Charlie"* ]]; then
  echo "PASS: create then query works"
  exit 0
else
  echo "FAIL: create then query failed"
  exit 1
fi