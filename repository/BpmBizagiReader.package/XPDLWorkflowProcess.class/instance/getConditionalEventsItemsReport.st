import unsupported items
getConditionalEventsItemsReport

	^self createtemsReportForElementSatisfying: [:each | each isConditionalNode] 
			code: 716
			title: 'Unsupported Element' 
			description: 'Conditional Events are NOT supported' 
			solution: 'Remove the Event'