warning items creation
addUnsupportedEscalationEventItem: aXPDLObject

	detectedItems add: (
		self createItemReportType: 'Error'
			code: 724
			xpdlObject: aXPDLObject
			title: 'Unsupported Element'
			description: 'Escalation Events are NOT supported'
			solution: 'Remove the Event'
			)