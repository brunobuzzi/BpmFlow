import unsupported items
getParallelMultipleEventsItemsReport

	^self getItemsReportForElementSatisfying: [:each | each isParallelMultipleNode] 
			title: 'Unsupported Element' 
			description: 'Parallel Multiple Events are NOT supported' 
			solution: 'Remove the Event'