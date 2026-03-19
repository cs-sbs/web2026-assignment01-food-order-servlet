#!/bin/bash

BASE_URL="http://localhost:8080"

response=$(curl -s $BASE_URL/order/9999)

if [[ "$response" == *"not"* ]] || [[ "$response" == *"Error"* ]]; then
  echo "PASS: order not found handled"
  exit 0
else
  echo "FAIL: missing order not handled"
  exit 1
fi