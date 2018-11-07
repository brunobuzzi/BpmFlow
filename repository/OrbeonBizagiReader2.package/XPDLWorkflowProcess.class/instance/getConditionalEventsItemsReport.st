import unsupported items
getConditionalEventsItemsReport

	^self getItemsReportForElementSatisfying: [:each | each isConditionalNode] 
			title: 'Unsupported Element' 
			description: 'Conditional Events are NOT supported' 
			solution: 'Remove the Event'