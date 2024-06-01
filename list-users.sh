#!/bin/bash

################################
# Author : Nishank
# Date : 01/06/24
#
# This script is responsible for listing the users who have access a repository you own.
################################


# GitHub API URL
API_URL="https://api.github.com"

# GitHub Username and Personal Access Token
GITHUB_USERNAME="Enter your username here"
GITHUB_TOKEN="Enter your token value here"

# User and Repository information
REPO_OWNER=$1
REPO_NAME=$2

# Check if the required arguments are provided
if [ -z "$REPO_OWNER" ] || [ -z "$REPO_NAME" ]; then
  echo "Usage: $0 <Repo_Owner> <Repo_Name>"
  exit 1
fi

# Make the GET request to fetch collaborators
RESPONSE=$(curl -s -H "Authorization: token $GITHUB_TOKEN" "$API_URL/repos/$REPO_OWNER/$REPO_NAME/collaborators")

# Check if the response is empty or contains an error
if [ -z "$RESPONSE" ]; then
  echo "Failed to fetch collaborators or no collaborators found."
  exit 1
fi

# Parse and display the list of collaborators
echo "Collaborators for repository $REPO_OWNER/$REPO_NAME:"
echo "$RESPONSE" | jq -r '.[].login'
