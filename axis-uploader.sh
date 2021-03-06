#!/bin/bash

#Replace with your settings
channel="NameOnSlackChannel"
token="SlackBotToken"
interval="3600"
file="ImageFilename"
url="http://username:password@ip.adress.here"
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

# Waiting before running again (Interval should be set to seconds)

    sleep $interval

done
