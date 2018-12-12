warning items creation
addUnsupportedUserTaskItem

	detectedItems add: (
		self createItemReportType: 'Error'
			code: 752
			title: 'Unsupported Element'
			description: 'User Tasks are NOT supported'
			solution: 'Change the Task Type'
			)