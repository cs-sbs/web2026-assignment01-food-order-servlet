#!/bin/bash

BASE_URL="http://localhost:8080"

response=$(curl -s $BASE_URL/menu)

if [[ "$response" == *"Menu"* ]]; then
  echo "PASS: menu endpoint exists"
  exit 0
else
  echo "FAIL: menu endpoint not working"
  exit 1
fi