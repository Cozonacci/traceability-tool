#!/bin/bash

echo "Uploading Cucumber results to Zephyr"

#if [ -z $1 ] || [ -z $2 ]
#then
#  echo "Some or all of the parameters are empty";
#  echo "Usage: $0 projectKey token"
#  echo -e "\t- projectKey jira project key for tests "
#  echo -e "\t- token Public REST API token for Zephyr Scale"
#  exit 1
#fi

# expect project key from user
#PROJECT_KEY=$1 # provide your project key
PROJECT_KEY=SCRUM # provide your project key

# expect token from user
#TOKEN=$2 # provide your Public REST API token
TOKEN="update-me"

URL="https://prod-api.zephyr4jiracloud.com/v2/automations/executions/cucumber?projectKey=${PROJECT_KEY}&autoCreateTestCases=false"

# remove if the build was trigger as part of a previous stage
#mvn clean install

# create zip file as required for Zephyr API, ensure the reports location and file name prefix
zip -D ./target/cucumber.zip ./target/cucumber*.json

# upload Cucumber results to Zephyr
#curl -o -X POST -F "file=@target/cucumber.zip" -H "Authorization: Bearer ${TOKEN}" $URL