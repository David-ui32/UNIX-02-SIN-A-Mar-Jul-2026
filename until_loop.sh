#!/bin/bash

# Define the file name we will check
FILE="output1.txt"

# Create the file (empty at first)
touch "${FILE}"

# Keep looping until the file has some content (is not empty)
until [[ -s "${FILE}" ]]; do
  # Inform the user that the file is still empty
  echo "${FILE} is empty..."
  
  # Tell the user we will check again after 2 seconds
  echo "Checking again in 2 seconds..."
  
  # Pause execution for 2 seconds before checking again
  sleep 2
done

# Once the file has content, exit the loop and print a message
echo "${FILE} appears to have some content in it!"
