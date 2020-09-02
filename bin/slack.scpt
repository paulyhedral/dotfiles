tell application "Slack"
	if it is running then
		activate
	end if
end tell

tell application "System Events"
	key code 21 using command down
	delay 0.3
	key code 3 using command down
	delay 0.3 
	key code 0 using command down
	delay 0.3 
	key code 51
	delay 0.3 
	keystroke "#engi"
	delay 0.3 
	key code 125
	-- delay 0.5
	-- keystroke "cl"
	delay 0.3
	key code 36
	-- delay 0.3
	-- key code 9 using command down
	-- delay 0.3
	-- key code 36
end tell 


