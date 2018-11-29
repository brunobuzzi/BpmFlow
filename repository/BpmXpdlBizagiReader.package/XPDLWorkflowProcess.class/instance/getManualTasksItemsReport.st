import unsupported items
getManualTasksItemsReport

	^self createtemsReportForElementSatisfying: [:each | each isManualTaskNode] 
			code: 728
			title: 'Unsupported Element' 
			description: 'Manual Tasks are NOT supported' 
			solution: 'Change the Task Type'