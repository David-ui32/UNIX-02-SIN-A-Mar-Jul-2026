#!/bin/bash

# Loop through all files that start with "example_file"
for file in example_file*; do
  
  # If the current file is "example_file1", skip it
  if [[ "${file}" == "example_file1" ]]; then
    echo "Skipping the first file"
    continue
  fi
  
  # For all other files, write a random number into the file
  echo "${RANDOM}" > "${file}"
done
