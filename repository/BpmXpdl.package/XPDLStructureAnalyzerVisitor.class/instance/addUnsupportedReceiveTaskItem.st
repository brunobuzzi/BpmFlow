warning items creation
addUnsupportedReceiveTaskItem

	detectedItems add: (
		self createItemReportType: 'Error'
			code: 740
			title: 'Unsupported Element'
			description: 'Receive Tasks are NOT supported'
			solution: 'Change the Task Type'
			)