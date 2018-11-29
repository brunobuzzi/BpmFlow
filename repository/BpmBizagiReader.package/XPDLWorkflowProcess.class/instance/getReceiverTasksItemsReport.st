import unsupported items
getReceiverTasksItemsReport

	^self createtemsReportForElementSatisfying: [:each | each isTaskReceiveNode] 
			code: 740
			title: 'Unsupported Element' 
			description: 'Receive Tasks are NOT supported' 
			solution: 'Change the Task Type'