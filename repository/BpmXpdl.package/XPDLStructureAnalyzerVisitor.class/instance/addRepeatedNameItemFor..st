warning items creation
addRepeatedNameItemFor: aXPDLActivityNode

	detectedItems add: (
		self createItemReportType: 'Error'
			code: 108
			xpdlObject: aXPDLActivityNode
			title: 'Activities with the same Name'
			description: 'Activity [', aXPDLActivityNode getName, '] in Process [', aXPDLActivityNode workflow getName, '] is repeated'
			solution: 'Delete or rename one of the activities'
			)