#!/bin/bash

echo "Running acceptance test..."

response=$(curl -s http://localhost:8080)

if [[ $response == *"Welcome"* ]] || [[ $response == *"nginx"* ]]; then
    echo "Test Passed ✅"
    exit 0
else
    echo "Test Failed ❌"
    exit 1
fi
