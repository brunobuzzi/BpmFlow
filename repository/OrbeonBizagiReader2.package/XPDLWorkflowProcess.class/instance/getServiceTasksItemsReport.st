import unsupported items
getServiceTasksItemsReport

	^self getItemsReportForElementSatisfying: [:each | each isServiceTaskNode] 
			title: 'Unsupported Element' 
			description: 'Service Tasks are NOT supported' 
			solution: 'Change the Task Type'