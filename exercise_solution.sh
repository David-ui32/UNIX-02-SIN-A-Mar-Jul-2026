#!/bin/bash

# Store the first argument as the site name
NAME="${1}"

# Store the second argument as the target domain
DOMAIN="${2}"

# Define the output CSV file
OUTPUT_FILE="results.csv"

# Check if both required arguments were provided
if [[ -z "${NAME}" ]] || [[ -z "${DOMAIN}" ]]; then
    echo "You must provide two arguments to this script."
    echo "Example: ${0} mysite nostarch.com"
    exit 1
fi

# Write the CSV header
echo "status,name,domain,timestamp" > "${OUTPUT_FILE}"

# Ping the target domain and save the result
if ping -c 1 "${DOMAIN}" &> /dev/null; then
    echo "success,${NAME},${DOMAIN},$(date)" >> "${OUTPUT_FILE}"
else
    echo "failure,${NAME},${DOMAIN},$(date)" >> "${OUTPUT_FILE}"
fi

# Keep the script running for 30 seconds
# This is only used to demonstrate that the script
# remains active when executed with nohup in the background
sleep 30
```

### Commands to Execute and Verify the Script

```bash
# Give execution permissions to the script
chmod +x exercise_solution.sh

# Run the script in the background using nohup
nohup ./exercise_solution.sh mysite google.com > nohup.out 2>&1 &

# Verify that the script is running
pgrep -af exercise_solution.sh

# Alternative verification command
ps -ef | grep exercise_solution.sh

# Display the generated CSV file
cat results.csv

# Display the output captured by nohup
cat nohup.out
```
