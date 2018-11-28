import unsupported items
getErrorEventsItemsReport

	^self getItemsReportForElementSatisfying: [:each | each isErrorNode] 
			title: 'Unsupported Element' 
			description: 'Error Events are NOT supported' 
			solution: 'Remove the Event'