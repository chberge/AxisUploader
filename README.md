# AxisUploader to Slack-channel
Bash-script for downloading pictures from an Axis IP-camera, and uploading to a Slack-channel.


This script is ment for hardware on the same internal network as the Axis-camera. Otherwise you will need to have an external link to your camera for this script to work.


## How to use

First, you need to create a SlackBot, so you get and SlackBot-Token. You will need this to access your workspace and channels. Continue with downloading the script, make some changes to it, 



### Download script

sudo wget https://raw.githubusercontent.com/chberge/AxisUploader/master/axis-uploader.sh 

### Make runnable

sudo chmod +x axis-uploader.sh


### Edit settings 

sudo nano axis-uploader.sh


### Run it

sh axis-uploader.sh


### Thats it!

Congrats, you should now see pictures from your AxisCam in Slack :)
