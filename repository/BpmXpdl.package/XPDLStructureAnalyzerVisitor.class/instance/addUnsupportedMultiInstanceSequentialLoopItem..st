warning items creation
addUnsupportedMultiInstanceSequentialLoopItem: aXPDLObject

	detectedItems add: (
		self createItemReportType: 'Error'
			code: 756
			xpdlObject: aXPDLObject
			title: 'Unsupported Element'
			description: 'Sequential Multi Instance Loop are NOT supported'
			solution: 'Change to Parallel'
			)