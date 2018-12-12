warning items creation
addUnsupportedEscalationEventItem

	detectedItems add: (
		self createItemReportType: 'Error'
			code: 724
			title: 'Unsupported Element'
			description: 'Escalation Events are NOT supported'
			solution: 'Remove the Event'
			)