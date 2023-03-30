#!/bin/bash

# The file name that contains the image names and tags
IMAGE_FILE="images.txt"

# Loop through each line of the file
while read -r line; do
  # Push the image to Docker Hub
  docker push "$line"
done < "$IMAGE_FILE"