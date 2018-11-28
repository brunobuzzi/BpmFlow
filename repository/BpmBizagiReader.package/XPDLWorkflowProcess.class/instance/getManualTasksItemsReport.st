import unsupported items
getManualTasksItemsReport

	^self getItemsReportForElementSatisfying: [:each | each isManualTaskNode] 
			title: 'Unsupported Element' 
			description: 'Manual Tasks are NOT supported' 
			solution: 'Change the Task Type'