#!/bin/bash

# Function to display usage information
usage() {
    echo "Usage: $0 <topic_name> [<file_name>]"
    echo "  <topic_name> - ROS topic to subscribe"
    echo "  <file_name>  - Optional. File to log messages. Defaults to 'output.csv'"
    exit 1
}

# Check for at least one argument
if [ "$#" -lt 1 ]; then
    usage
fi

# Assigning topic name and file name (with default)
topic_name=$1
file_name=${2:-output.csv}

# Subscribing to the topic and writing to the file
echo "Subscribing to $topic_name and logging messages to $file_name"
rostopic echo "$topic_name" > "$file_name"
