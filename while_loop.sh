#!/bin/bash
# Define the name of the file that will signal the loop to stop
SIGNAL_TO_STOP_FILE="stoploop"

# Keep looping while the file does NOT exist
while [[ ! -f "${SIGNAL_TO_STOP_FILE}" ]]; do
  # Inform the user that the file is not found yet
  echo "The file ${SIGNAL_TO_STOP_FILE} does not yet exist..."
  
  # Tell the user we will check again after 2 seconds
  echo "Checking again in 2 seconds..."
  
  # Pause execution for 2 seconds before checking again
  sleep 2
done

# Once the file is found, exit the loop and print a message
echo "File was found! Exiting..."
