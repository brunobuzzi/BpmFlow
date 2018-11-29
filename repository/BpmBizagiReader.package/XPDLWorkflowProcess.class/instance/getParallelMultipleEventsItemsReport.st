import unsupported items
getParallelMultipleEventsItemsReport

	^self createtemsReportForElementSatisfying: [:each | each isParallelMultipleNode] 
			code: 736 
			title: 'Unsupported Element' 
			description: 'Parallel Multiple Events are NOT supported' 
			solution: 'Remove the Event'