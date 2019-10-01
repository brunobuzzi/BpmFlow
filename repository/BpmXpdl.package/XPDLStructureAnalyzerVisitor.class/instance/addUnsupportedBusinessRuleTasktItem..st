warning items creation
addUnsupportedBusinessRuleTasktItem: aXPDLObject

	detectedItems add: (
		self createItemReportType: 'Error'
			code: 704
			xpdlObject: aXPDLObject
			title: 'Unsupported Element'
			description: 'Business Rules Tasks are NOT supported'
			solution: 'Change the Task Type'
			)