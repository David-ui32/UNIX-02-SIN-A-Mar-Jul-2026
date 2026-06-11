#!/bin/bash
# Store the first argument passed to the script in the variable USER_INPUT
USER_INPUT="${1}"

# Step 1: Validate if the user provided an argument
# -z checks if the string is empty
if [[ -z "${USER_INPUT}" ]]; then
  echo "You must provide an argument!"   # Inform the user that an argument is required
  exit 1                                 # Exit the script with status code 1 (error)
fi

# Step 2: Check if the input corresponds to a file
# -f returns true if the path is a regular file
if [[ -f "${USER_INPUT}" ]]; then
  echo "${USER_INPUT} is a file."        # Output message confirming it's a file

# Step 3: Check if the input corresponds to a directory
# -d returns true if the path is a directory
elif [[ -d "${USER_INPUT}" ]]; then
  echo "${USER_INPUT} is a directory."   # Output message confirming it's a directory

# Step 4: Handle the case where the input is neither a file nor a directory
else
  echo "${USER_INPUT} is not a file or a directory."   # Output message for invalid input
fi
