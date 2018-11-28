import unsupported items
getReceiverTasksItemsReport

	^self getItemsReportForElementSatisfying: [:each | each isTaskReceiveNode] 
			title: 'Unsupported Element' 
			description: 'Receive Tasks are NOT supported' 
			solution: 'Change the Task Type'