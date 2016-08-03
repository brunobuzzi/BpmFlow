other
renderContentOn: html

	html div class: 'default-gray-table '; with: [
		html render: (tasksBatchedList table: self sewafTableForTasks)].

	selectedTask ifNil: [^self].

	usersBatchedList items: selectedTask getGrantedUsers.

	html div class: 'default-gray-table '; with: [
		html render: (usersBatchedList table: self sewafTableForUsers)].

	self renderCloseWindowsButtonOn: html.