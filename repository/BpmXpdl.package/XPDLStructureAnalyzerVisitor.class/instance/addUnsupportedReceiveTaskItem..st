warning items creation
addUnsupportedReceiveTaskItem: aXPDLObject

	detectedItems add: (
		self createItemReportType: 'Error'
			code: 740
			xpdlObject: aXPDLObject
			title: 'Unsupported Element'
			description: 'Receive Tasks are NOT supported'
			solution: 'Change the Task Type'
			)