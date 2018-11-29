import unsupported items
getSignalEventsItemsReport

	^self createtemsReportForElementSatisfying: [:each | each isSignalNode] 
			code: 748
			title: 'Unsupported Element' 
			description: 'Signal Events are NOT supported' 
			solution: 'Remove the Event'