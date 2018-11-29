import unsupported items
getEscalationEventsItemsReport

	^self createtemsReportForElementSatisfying: [:each | each isEscalationNode] 
			code: 724
			title: 'Unsupported Element' 
			description: 'Escalation Events are NOT supported' 
			solution: 'Remove the Event'