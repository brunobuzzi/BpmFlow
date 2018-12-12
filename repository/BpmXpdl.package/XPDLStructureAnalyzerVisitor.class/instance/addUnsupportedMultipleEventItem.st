warning items creation
addUnsupportedMultipleEventItem

	detectedItems add: (
		self createItemReportType: 'Error'
			code: 732
			title: 'Unsupported Element'
			description: 'Multiple Events are NOT supported'
			solution: 'Remove the Event'
			)