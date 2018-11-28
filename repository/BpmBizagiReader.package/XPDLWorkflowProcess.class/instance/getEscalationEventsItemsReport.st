import unsupported items
getEscalationEventsItemsReport

	^self getItemsReportForElementSatisfying: [:each | each isEscalationNode] 
			title: 'Unsupported Element' 
			description: 'Escalation Events are NOT supported' 
			solution: 'Remove the Event'