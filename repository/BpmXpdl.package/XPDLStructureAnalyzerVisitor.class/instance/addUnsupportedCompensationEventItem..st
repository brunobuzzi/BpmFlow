warning items creation
addUnsupportedCompensationEventItem: aXPDLObject

	detectedItems add: (
		self createItemReportType: 'Error'
			code: 708
			xpdlObject: aXPDLObject
			title: 'Unsupported Element'
			description: 'Compensation Events are NOT supported' 
			solution: 'Remove the Event'
			)