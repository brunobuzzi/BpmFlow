import unsupported items
getCompensationEventsItemsReport

	^self getItemsReportForElementSatisfying: [:each | each isCompensationNode] 
			title: 'Unsupported Element' 
			description: 'Compensation Events are NOT supported' 
			solution: 'Remove the Event'