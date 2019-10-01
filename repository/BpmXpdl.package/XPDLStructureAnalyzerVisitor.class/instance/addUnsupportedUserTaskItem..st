warning items creation
addUnsupportedUserTaskItem: aXPDLObject

	detectedItems add: (
		self createItemReportType: 'Error'
			code: 752
			xpdlObject: aXPDLObject
			title: 'Unsupported Element'
			description: 'User Tasks are NOT supported'
			solution: 'Change the Task Type'
			)