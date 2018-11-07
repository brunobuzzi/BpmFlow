import unsupported items
getUserTasksItemsReport

	^self getItemsReportForElementSatisfying: [:each | each isUserTaskNode] 
			title: 'Unsupported Element' 
			description: 'User Tasks are NOT supported' 
			solution: 'Change the Task Type'