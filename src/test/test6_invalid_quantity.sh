#!/bin/bash

BASE_URL="http://localhost:8080"

response=$(curl -s -X POST $BASE_URL/order \
-d "customer=Alice" \
-d "food=Burger" \
-d "quantity=abc")

if [[ "$response" == *"Error"* ]] || [[ "$response" == *"invalid"* ]]; then
  echo "PASS: invalid quantity handled"
  exit 0
else
  echo "FAIL: invalid quantity not handled"
  exit 1
fi