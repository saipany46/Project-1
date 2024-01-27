{\rtf1\ansi\ansicpg1252\cocoartf2709
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 #!/bin/bash\
\
# Check if the minimum number of arguments is provided\
if [ "$#" -lt 2 ]; then\
    echo "Usage: $0 <topic_name> <msg_type> [msg]"\
    exit 1\
fi\
\
# Assign arguments to variables\
topic_name=$1\
msg_type=$2\
msg=$\{3:-""\}  # Default to an empty string if no message is provided\
\
# Function to publish a message\
publish_message() \{\
    if [ -z "$msg" ]; then\
        echo "No message provided. Publishing empty message to $topic_name with type $msg_type."\
        rostopic pub "$topic_name" "$msg_type" "\{\}"\
    else\
        echo "Publishing message to $topic_name with type $msg_type."\
        rostopic pub "$topic_name" "$msg_type" "$msg"\
    fi\
\}\
\
# Call the function to publish the message\
publish_message\
}