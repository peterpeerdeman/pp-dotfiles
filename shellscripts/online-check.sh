#!/bin/zsh
 
# Saved in ~/online-check.sh and in a cron job as:
# * * * * * ~/online-check.sh

# On mac os x, place the nl.peterpeerdeman.onlinecheck in ~/Library/LaunchAgents
 
local offline=`dig 8.8.8.8 +time=1 +short google.com A | grep -c "no servers could be reached"`
if [[ "$offline" == "0" ]]; then
  rm -f /Users/peter/.offline
  touch /Users/peter/.online
else
  touch /Users/peter/.offline
  rm -f /Users/peter/.online
fi
