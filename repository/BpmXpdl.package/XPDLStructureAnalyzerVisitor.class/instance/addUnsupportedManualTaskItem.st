warning items creation
addUnsupportedManualTaskItem

	detectedItems add: (
		self createItemReportType: 'Error'
			code: 728
			title: 'Unsupported Element'
			description: 'Manual Tasks are NOT supported'
			solution: 'Change the Task Type'
			)