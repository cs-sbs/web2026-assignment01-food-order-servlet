#!/bin/bash

BASE_URL="http://localhost:8080"

response=$(curl -s -X POST $BASE_URL/order \
-d "customer=Alice" \
-d "food=Fried Rice")

if [[ "$response" == *"Error"* ]] || [[ "$response" == *"missing"* ]]; then
  echo "PASS: missing parameter handled"
  exit 0
else
  echo "FAIL: missing parameter not handled"
  exit 1
fi