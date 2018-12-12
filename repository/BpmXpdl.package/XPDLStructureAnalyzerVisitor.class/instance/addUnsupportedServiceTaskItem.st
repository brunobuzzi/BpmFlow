warning items creation
addUnsupportedServiceTaskItem

	detectedItems add: (
		self createItemReportType: 'Error'
			code: 744
			title: 'Unsupported Element'
			description: 'Service Tasks are NOT supported'
			solution: 'Change the Task Type'
			)