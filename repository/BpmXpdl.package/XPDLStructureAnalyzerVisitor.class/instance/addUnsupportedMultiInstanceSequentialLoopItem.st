warning items creation
addUnsupportedMultiInstanceSequentialLoopItem

	detectedItems add: (
		self createItemReportType: 'Error'
			code: 756
			title: 'Unsupported Element'
			description: 'Sequential Multi Instance Loop are NOT supported'
			solution: 'Change to Parallel'
			)