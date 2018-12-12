warning items creation
addUnsupportedSignalEventItem

	detectedItems add: (
		self createItemReportType: 'Error'
			code: 748
			title: 'Unsupported Element'
			description: 'Signal Events are NOT supported'
			solution: 'Remove the Event'
			)