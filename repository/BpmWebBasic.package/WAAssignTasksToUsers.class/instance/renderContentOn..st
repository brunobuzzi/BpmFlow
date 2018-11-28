other
renderContentOn: html

	html div id: 'assignation-close-form'; class: 'right'; with: [self renderCloseWindowsButtonOn: html].
	html div class: 'assignation-title'; with: [
		html text: 'Assign a User to each Task'.
		self renderFinalizeTaskOn: html].

	html div with: [
		html div class: 'left default-gray-table float-left '; with: [
			html render: (tasksBatchedList table: (self sewafTableForTasksOn: html))].

		html div id: 'users-to-add';class: 'center default-gray-table float-left float-left'; with: [
			selectedTask 
				ifNotNil: [
				"if <orderMode> is true --> the user list has been sorted and it is already with the correct items"
					(usersBatchedList hasOrderMode not and: [usersBatchedList searchApplied not]) ifTrue: [usersBatchedList items: selectedTask getGrantedUsers].
				]
				ifNil: [usersBatchedList items: OrderedCollection new]. 
			html render: (usersBatchedList table: self sewafTableForUsers).
		].
	].