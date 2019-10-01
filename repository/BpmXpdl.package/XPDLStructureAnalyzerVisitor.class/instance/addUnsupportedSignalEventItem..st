warning items creation
addUnsupportedSignalEventItem: aXPDLObject

	detectedItems add: (
		self createItemReportType: 'Error'
			code: 748
			xpdlObject: aXPDLObject
			title: 'Unsupported Element'
			description: 'Signal Events are NOT supported'
			solution: 'Remove the Event'
			)