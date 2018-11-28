import unsupported items
getMultipleEventsItemsReport

	^self getItemsReportForElementSatisfying: [:each | each isMultipleNode] 
			title: 'Unsupported Element' 
			description: 'Multiple Events are NOT supported' 
			solution: 'Remove the Event'