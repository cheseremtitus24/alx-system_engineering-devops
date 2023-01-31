#!/bin/bash

# Get a list of all processes
processes=$(ls -1 /proc | grep -E '^[0-9]+$')

# Iterate through each process
for pid in $processes; do
    # Get the process name
    process_name=$(cat /proc/$pid/comm)

    # Check if the process name contains "bash"
    if [[ $process_name == *"bash"* ]]; then
        # Display the PID and process name
        echo "$pid $process_name"
    fi
done
