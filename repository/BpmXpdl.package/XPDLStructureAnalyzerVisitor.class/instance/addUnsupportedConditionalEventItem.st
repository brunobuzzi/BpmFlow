warning items creation
addUnsupportedConditionalEventItem

	detectedItems add: (
		self createItemReportType: 'Error'
			code: 716
			title: 'Unsupported Element'
			description: 'Conditional Events are NOT supported'
			solution: 'Remove the Event'
			)