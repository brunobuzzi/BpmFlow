import unsupported items
getServiceTasksItemsReport

	^self createtemsReportForElementSatisfying: [:each | each isServiceTaskNode] 
			code: 744
			title: 'Unsupported Element' 
			description: 'Service Tasks are NOT supported' 
			solution: 'Change the Task Type'