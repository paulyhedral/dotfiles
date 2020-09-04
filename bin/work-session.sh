#!/bin/bash

set -x
set -e

scriptdir="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

open /Applications/Spark.app
open /Applications/Slack.app
osascript "$scriptdir/slack.scpt"
open "/Applications/Waterfox Current.app"
open "/Applications/Google Chrome.app"
osascript "$scriptdir/chrome.scpt"
open "/Applications/Lens.app"
