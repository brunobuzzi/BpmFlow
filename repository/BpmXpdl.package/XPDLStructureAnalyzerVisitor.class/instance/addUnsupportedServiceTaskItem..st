warning items creation
addUnsupportedServiceTaskItem: aXPDLObject

	detectedItems add: (
		self createItemReportType: 'Error'
			code: 744
			xpdlObject: aXPDLObject
			title: 'Unsupported Element'
			description: 'Service Tasks are NOT supported'
			solution: 'Change the Task Type'
			)