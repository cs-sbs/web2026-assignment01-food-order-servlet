#!/bin/bash

BASE_URL="http://localhost:8080"

# create order
curl -s -X POST $BASE_URL/order \
-d "customer=Bob" \
-d "food=Burger" \
-d "quantity=1" > /dev/null

response=$(curl -s $BASE_URL/order/1001)

if [[ "$response" == *"Order"* ]]; then
  echo "PASS: order detail works"
  exit 0
else
  echo "FAIL: order detail not working"
  exit 1
fi