import unsupported items
getAttachedMessageEventsItemsReport

	^self createtemsReportForElementSatisfying: [:each | each isMessageNode and: [each isAttached]] 
			code: 700
			title: 'Unsupported Element' 
			description: 'Attached Message Events are NOT supported' 
			solution: 'Remove the Event'