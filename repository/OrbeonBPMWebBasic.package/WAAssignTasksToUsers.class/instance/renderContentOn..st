other
renderContentOn: html

	html div class: 'assignation-title'; with: [
		html text: 'Assign a User to each Task'].

	html div with: [
		html div class: 'left default-gray-table float-left '; with: [
			html render: (tasksBatchedList table: self sewafTableForTasks)].

		selectedTask ifNotNil: [
		"if <orderMode> is true --> the user list has been sorted and it is already with the correct items"
			usersBatchedList hasOrderMode ifFalse: [usersBatchedList items: selectedTask getGrantedUsers].

			html div id: 'users-to-add';class: 'center default-gray-table float-left float-left'; with: [
				html render: (usersBatchedList table: self sewafTableForUsers)].

			html div id: 'assignation-close-form'; class: 'right'; with: [self renderCloseWindowsButtonOn: html].
		].
	].