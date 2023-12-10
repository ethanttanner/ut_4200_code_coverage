#!/bin/bash

CIRCLECI_API_TOKEN="CCIPAT_6TZjtzwDmzZQn9RQS2RNVf_e58969f1485e331d6a2abf832b761458d9aa3270"
PROJECT_USERNAME="cci-69y7kk"
PROJECT_NAME="ut_4200_code_coverage"
BUILD_NUMBER="036aa36"

response=$(curl -X POST "https://circleci.com/api/v2/project/github/$PROJECT_USERNAME/$PROJECT_NAME/pipeline" \
-H "Content-Type: application/json" \
-H "Circle-Token: $CIRCLECI_TOKEN")

# Extract pipeline ID
pipeline_id=$(echo $response | jq -r .id)

# Retrieve artifacts
curl -X GET "https://circleci.com/api/v2/project/github/$PROJECT_USERNAME/$PROJECT_NAME/pipeline/$pipeline_id/job/BUILD_NUM/test_results" \
-H "Content-Type: application/json" \
-H "Circle-Token: $CIRCLECI_TOKEN" \
-o artifacts.zip

