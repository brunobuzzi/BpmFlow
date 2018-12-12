warning items creation
addUnsupportedParallelMultipleEventItem

	detectedItems add: (
		self createItemReportType: 'Error'
			code: 736
			title: 'Unsupported Element'
			description: 'Parallel Multiple Events are NOT supported'
			solution: 'Remove the Event'
			)