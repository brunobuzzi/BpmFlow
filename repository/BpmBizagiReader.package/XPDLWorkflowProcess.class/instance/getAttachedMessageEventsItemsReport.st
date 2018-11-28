import unsupported items
getAttachedMessageEventsItemsReport

	^self getItemsReportForElementSatisfying: [:each | each isMessageNode and: [each isAttached]] 
			title: 'Unsupported Element' 
			description: 'Attached Message Events are NOT supported' 
			solution: 'Remove the Event'