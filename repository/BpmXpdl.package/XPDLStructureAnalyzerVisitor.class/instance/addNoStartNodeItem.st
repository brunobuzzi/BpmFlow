warning items creation
addNoStartNodeItem

	detectedItems add: (
		self createItemReportType: 'Error'
				code: 112
				xpdlObject: currentWorkflow
				title: 'Process without Start'
				description: 'Process [', currentWorkflow getName, '] does NOT have a Start Node'
				solution: 'Create a Start node in the Process definition'
				)