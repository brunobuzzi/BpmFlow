other
renderUsersOfSelectedEnvironmentOn: html

	selectedLateralItem users isEmpty ifTrue: [^self].
	
	html div id: 'environment-users-table'; class: 'default-gray-table '; with: [
		usersBatchedList items: selectedLateralItem users.
		html render: (usersBatchedList table: self sewafTableForUsers).
	]