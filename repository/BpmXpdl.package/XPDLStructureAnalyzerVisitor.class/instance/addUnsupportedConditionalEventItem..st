warning items creation
addUnsupportedConditionalEventItem: aXPDLObject

	detectedItems add: (
		self createItemReportType: 'Error'
			code: 716
			xpdlObject: aXPDLObject
			title: 'Unsupported Element'
			description: 'Conditional Events are NOT supported'
			solution: 'Remove the Event'
			)