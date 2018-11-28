other
renderTableWithTasksOn: html

	batchedList items: self getTransitionList.

	html render: (batchedList table: self sewafTableForUserTasks).