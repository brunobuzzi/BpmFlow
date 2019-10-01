warning items creation
addUnsupportedManualTaskItem: aXPDLObject

	detectedItems add: (
		self createItemReportType: 'Error'
			code: 728
			xpdlObject: aXPDLObject
			title: 'Unsupported Element'
			description: 'Manual Tasks are NOT supported'
			solution: 'Change the Task Type'
			)