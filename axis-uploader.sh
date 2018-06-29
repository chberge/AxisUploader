#!/bin/bash

#Replace with your settings
channel="NameOnSlackChannel"
token="SlackBotToken"
file="ImageFilename"
url="http://ip.adress.here"
size="1280x720"

while true
do

# Downloading file from camera

    wget "$url"/axis-cgi/jpg/image.cgi?resolution="$size" -O $file
    
# Uploading to Slack

    curl -F file=@$file_a -F channels=#$channel -F token=$token https://slack.com/api/files.upload
    
# Wait 10 seconds
    sleep 10
    
# Deleting file

    rm $file

# Waiting before running again (43200 (seconds) = 12 hours)

    sleep 43200

done
