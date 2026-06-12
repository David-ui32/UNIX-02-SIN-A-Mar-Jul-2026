#!/bin/bash
# Function definition: check_if_root
# This function determines whether the current user has root privileges.
# In Linux/Unix systems, the root user has a user ID (UID) of 0.
check_if_root() {
  # Step 1: Compare the effective user ID (EUID) with 0
  # - "${EUID}" is a built-in variable that stores the current user's effective ID
  # -eq checks if the value is equal
  if [[ "${EUID}" -eq "0" ]]; then
    return 0   # Return success (exit status 0) if the user is root
  else
    return 1   # Return failure (exit status 1) if the user is not root
  fi
}
# Step 2: Call the function and evaluate its result
# If the function returns 0 (true), the user is root
if check_if_root; then
  echo "User is root!"        # Output message confirming root privileges
else
  echo "User is not root!"    # Output message confirming non-root user
fi
#useradd -m luna
#su - luna
#whoami 
#id 