warning items creation
addUnsupportedCompensationEventItem

	detectedItems add: (
		self createItemReportType: 'Error'
			code: 708
			title: 'Unsupported Element'
			description: 'Compensation Events are NOT supported' 
			solution: 'Remove the Event'
			)