warning items creation
addLaneWithNoNameItem: aXPDLLaneNode

	detectedItems add: (
		self createItemReportType: 'Warning' 
			code: 50
			title: 'Lane without name'
			description: 'The Lane [', aXPDLLaneNode getName, '] in Process [', aXPDLLaneNode getName, '] has no name'
			solution: 'Edit the Process definition and set the name of the lane'
			)