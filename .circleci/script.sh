#!/bin/bash

API_TOKEN="CCIPAT_6TZjtzwDmzZQn9RQS2RNVf_e58969f1485e331d6a2abf832b761458d9aa3270"
USERNAME="ethanttanner"
PROJECT="ut_4200_code_coverage"
BUILD_NUMBER="5ebac54"

# Authenticate
curl -X POST "https://circleci.com/api/v2/me/prefs" \
     -H "Circle-Token: $API_TOKEN"


# Retrieve test results
curl -u "${API_TOKEN}:" "https://circleci.com/api/v2/project/github/${USERNAME}/${PROJECT}/${BUILD_NUMBER}/test-results" -o tests.zip

# Retrieve coverage report
curl -u "${API_TOKEN}:" "https://circleci.com/api/v2/project/github/${USERNAME}/${PROJECT}/${BUILD_NUMBER}/coverage" | jq -r '.items[] | select(.path | contains("coverage")) | .url' | xargs curl -u "${API_TOKEN}:" -o coverage.zip
