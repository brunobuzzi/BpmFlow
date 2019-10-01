warning items creation
addUnsupportedErrorEventItem: aXPDLObject

	detectedItems add: (
		self createItemReportType: 'Error'
			code: 720
			xpdlObject: aXPDLObject
			title: 'Unsupported Element'
			description: 'Error Events are NOT supported'
			solution: 'Remove the Event'
			)