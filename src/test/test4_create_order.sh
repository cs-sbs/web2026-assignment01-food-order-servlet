#!/bin/bash

BASE_URL="http://localhost:8080"

response=$(curl -s -X POST $BASE_URL/order \
-d "customer=Alice" \
-d "food=Fried Rice" \
-d "quantity=2")

if [[ "$response" == *"Order"* ]]; then
  echo "PASS: order created"
  exit 0
else
  echo "FAIL: order creation failed"
  exit 1
fi