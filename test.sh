#!/bin/bash

# Test through api gateway
# Update this for your service
# Update the Lambda URL with the service you create
curl -v -X POST -H "Content-Type: application/json" -d @payload.json https://4yf26dd99e.execute-api.us-west-2.amazonaws.com/Prod/data

# Test locally
# curl -X POST -H "Content-Type: application/json" -d @payload.json http://localhost:3000/data
