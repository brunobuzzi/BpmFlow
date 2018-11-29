import unsupported items
getUserTasksItemsReport

	^self createtemsReportForElementSatisfying: [:each | each isUserTaskNode] 
			code: 752
			title: 'Unsupported Element' 
			description: 'User Tasks are NOT supported' 
			solution: 'Change the Task Type'