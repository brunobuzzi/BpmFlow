warning items creation
addUnsupportedMultipleEventItem: aXPDLObject

	detectedItems add: (
		self createItemReportType: 'Error'
			code: 732
			xpdlObject: aXPDLObject
			title: 'Unsupported Element'
			description: 'Multiple Events are NOT supported'
			solution: 'Remove the Event'
			)