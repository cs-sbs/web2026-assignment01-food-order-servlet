#!/bin/bash

BASE_URL="http://localhost:8080"

response=$(curl -s "$BASE_URL/menu?name=NotExistFood")

if [[ "$response" == *"not"* ]] || [[ "$response" == *"No"* ]]; then
  echo "PASS: empty search handled"
  exit 0
else
  echo "FAIL: empty search not handled"
  exit 1
fi