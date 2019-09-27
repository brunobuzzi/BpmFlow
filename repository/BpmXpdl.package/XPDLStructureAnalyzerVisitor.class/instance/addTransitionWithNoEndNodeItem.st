warning items creation
addTransitionWithNoEndNodeItem

	detectedItems add: (
		self createItemReportType: 'Error'
				code: 800
				title: 'Transition without End Node'
				description: 'A transition has no end node'
				solution: 'Reconnect the transition to an artifact or delete it'
				)