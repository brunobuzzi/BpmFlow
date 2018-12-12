warning items creation
addUnsupportedErrorEventItem

	detectedItems add: (
		self createItemReportType: 'Error'
			code: 720
			title: 'Unsupported Element'
			description: 'Error Events are NOT supported'
			solution: 'Remove the Event'
			)