#!/bin/bash
set -x

# Set repository url
REPO_URL=" "

# Deployment file
DEPLOYMENT_FILE="./Helm/values.yaml"

# Image tag
IMAGE_TAG="latest"

# Clone the repository
git clone $REPO_URL /temp/repo

# Change to the repository directory
cd /temp/repo

# Check if the repository was cloned successfully
if [ $? -ne 0 ]; then
    echo "Failed to clone the repository."
    exit 1
fi

# change image tag in values.yaml
sed -i "s/image_repository: .*/image_repository: $IMAGE_TAG:$(Build.BuildId)/" $DEPLOYMENT_FILE

# Check if the sed command was successful
if [ $? -ne 0 ]; then
    echo "Failed to update the image tag in $DEPLOYMENT_FILE."
else
    echo "Successfully updated the image tag in $DEPLOYMENT_FILE to $(Build.BuildId)." 
    exit 1
fi