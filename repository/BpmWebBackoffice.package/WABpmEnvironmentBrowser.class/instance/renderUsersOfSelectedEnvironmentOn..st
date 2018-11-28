other
renderUsersOfSelectedEnvironmentOn: html

	selectedLateralItem users isEmpty ifTrue: [^self].
	
	html div id: 'environment-users-table'; class: 'default-gray-table '; with: [
		html render: self sewafTableForUsers.
	]