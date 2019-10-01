warning items creation
addUnsupportedParallelMultipleEventItem: aXPDLObject

	detectedItems add: (
		self createItemReportType: 'Error'
			code: 736
			xpdlObject: aXPDLObject
			title: 'Unsupported Element'
			description: 'Parallel Multiple Events are NOT supported'
			solution: 'Remove the Event'
			)