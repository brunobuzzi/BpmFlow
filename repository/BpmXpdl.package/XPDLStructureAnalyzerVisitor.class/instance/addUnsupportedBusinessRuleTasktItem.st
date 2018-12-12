warning items creation
addUnsupportedBusinessRuleTasktItem

	detectedItems add: (
		self createItemReportType: 'Error'
			code: 704
			title: 'Unsupported Element'
			description: 'Business Rules Tasks are NOT supported'
			solution: 'Change the Task Type'
			)