# AxisUploader to Slack-channel
Bash-script for downloading pictures from an Axis IP-camera, and uploading to a Slack-channel.


This script is ment for hardware on the same internal network as the Axis-camera. Otherwise you will need to have an external link to your camera for this script to work.


## How to use

First, you need to create a SlackBot, so you get your SlackBot-Token. You will need this to access your workspace and channels. Continue with downloading the script, make some changes to it, 



### Download script

sudo wget https://raw.githubusercontent.com/chberge/AxisUploader/master/axis-uploader.sh 

### Make runnable

sudo chmod +x axis-uploader.sh


### Edit settings 

sudo nano axis-uploader.sh

# Set name to Channel-name without hashtag
channel="NameOnSlackChannel"

# Your SlackBot token
token="SlackBotToken"

# Interval in seconds for the script to run
interval="3600"

# Filename for the file uploaded to Slack
file="ImageFilename"

# IP-adress or URL for the camera
url="http://ip.adress.here"

# Image-size
size="1280x720"


### Run it

sh axis-uploader.sh


### Thats it!

Congrats, you should now see pictures from your AxisCam in Slack :)
