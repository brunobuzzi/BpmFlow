render
renderUsersOfSelectedEnvironmentOn: html

	selectedLateralItem usersIsEmpty ifTrue: [^self].
	
	html div id: 'environment-users-table'; class: 'default-gray-table '; with: [
		selectedLateralItem usersDo: [:user | usersBatchedList items add: user].
		html render: (usersBatchedList table: self sewafTableForUsers).
	]