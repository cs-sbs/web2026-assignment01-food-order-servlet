#!/bin/bash

BASE_URL="http://localhost:8080"

response=$(curl -s "$BASE_URL/menu?name=Fried")

if [[ "$response" == *"Fried"* ]]; then
  echo "PASS: search works"
  exit 0
else
  echo "FAIL: search failed"
  exit 1
fi