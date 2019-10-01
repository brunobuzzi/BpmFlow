warning items creation
addTransitionWithNoEndNodeItem: aXPDLTransitionNode

	detectedItems add: (
		self createItemReportType: 'Error'
				code: 800
				xpdlObject: aXPDLTransitionNode
				title: 'Transition without End Node'
				description: 'A transition has no end node'
				solution: 'Reconnect the transition to an artifact or delete it'
				)