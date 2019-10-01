warning items creation
addUnsupportedAttachedMessageEventItem: aXPDLObject

	detectedItems add: (
		self createItemReportType: 'Error'
			code: 700
			xpdlObject: aXPDLObject
			title: 'Unsupported Element'
			description: 'Attached Message Events are NOT supported'
			solution: 'Remove the Event'
			)