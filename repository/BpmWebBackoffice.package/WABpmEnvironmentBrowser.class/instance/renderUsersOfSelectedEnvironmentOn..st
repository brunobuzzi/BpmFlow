render
renderUsersOfSelectedEnvironmentOn: html

	selectedLateralItem usersIsEmpty ifTrue: [^self].
	
	html div id: 'environment-users-table'; class: 'default-gray-table '; with: [ | sortedUsers |
		sortedUsers := SortedCollection sortBlock: [:a :b | a username <= b username].
		selectedLateralItem usersDo: [:user | sortedUsers add: user].
		usersBatchedList items: sortedUsers.
		html render: (usersBatchedList table: self sewafTableForUsers).
	]