import unsupported items
getSignalEventsItemsReport

	^self getItemsReportForElementSatisfying: [:each | each isSignalNode] 
			title: 'Unsupported Element' 
			description: 'Signal Events are NOT supported' 
			solution: 'Remove the Event'