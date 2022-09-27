if application "Microsoft Teams" is running then
	
	# Remember the current application in focus
	set old to (path to frontmost application as text)
	
	activate application "Microsoft Teams"
	
	tell application "System Events"
		tell application process "Microsoft Teams"
			
			
			if name of window 1 does not end with "Microsoft Teams" then
				set windowName to name of window 2
			else
				set windowName to name of window 1
			end if
			
			perform action "AXRaise" of window windowName
			set frontmost to true
			
			# Command + E to go to search bar
			key code 14 using {command down}
			delay 0.3
			
			# English GUI
			# keystroke "/dnd"
			
			# German GUI
			keystroke "/nichtstören"
			
			delay 0.3
			# Enter
			key code 76
			
		end tell
	end tell
	# Set focus back to the original application we had in focus
	activate application old
end if

# source: https://github.com/kpshek/microsoft-teams-applescripts/blob/main/microsoft-teams-leave-meeting.applescript
# source: https://eastmanreference.com/complete-list-of-applescript-key-codes
# source: https://support.microsoft.com/en-us/office/keyboard-shortcuts-for-microsoft-teams-2e8e2a70-e8d8-4a19-949b-4c36dd5292d2
