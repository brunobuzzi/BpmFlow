warning items creation
addUnsupportedAttachedMessageEventItem

	detectedItems add: (
		self createItemReportType: 'Error'
			code: 700
			title: 'Unsupported Element'
			description: 'Attached Message Events are NOT supported'
			solution: 'Remove the Event'
			)