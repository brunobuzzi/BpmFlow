warning items creation
addNoEndNodeItem

	detectedItems add: (
		self createItemReportType: 'Error' 
				code: 116
				title: 'Process without End'
				description: 'Process [', currentWorkflow getName, '] does NOT have an End Node or End Node has NO name'
				solution: 'Create an End Node in the Process definition or set End Node name'
				)