#!/bin/bash

set -x
set -e

open /Applications/Spark.app
open /Applications/Slack.app
osascript slack.scpt
/Applications/Firefox.app/Contents/MacOS/firefox-bin -P CarLabs > /dev/null 2>&1 &
open "/Applications/Google Chrome.app"
osascript chrome.scpt

