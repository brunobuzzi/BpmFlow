other
renderItemComponentOn: html

	html div class: 'display-inline-flex width-100per'; with: [
		html div class: 'message-body'; with: [
			(selectedLateralItem body subStrings: '##') do: [:eachText | html output: eachText. html break.]].
		html div class: 'default-gray-table message-list-recipients'; with: [self renderUserListOn: html].	
	].