other
renderItemComponentOn: html

	html div class: 'display-inline-flex width-100per'; with: [
		html div class: 'message-body'; with: [html output: selectedLateralItem body].
		html div class: 'default-gray-table message-list-recipients'; with: [self renderUserListOn: html].	
	].