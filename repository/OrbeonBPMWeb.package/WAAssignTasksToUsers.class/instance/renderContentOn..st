other
renderContentOn: html

	html div class: 'assignation-title'; with: [
		html text: 'Assign a User to each Task'].

	html div class: 'default-gray-table float-left'; with: [
		html render: (tasksBatchedList table: self sewafTableForTasks)].

	selectedTask ifNil: [^self].

	usersBatchedList items: selectedTask getGrantedUsers.

	html div class: 'default-gray-table float-left float-left'; with: [
		html render: (usersBatchedList table: self sewafTableForUsers)].

	html div id: 'assignation-close-form'; with: [self renderCloseWindowsButtonOn: html].