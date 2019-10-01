warning items creation
addPoolWithoutNameItem: aXPDLPoolNode

	detectedItems add: (
		self createItemReportType: 'Error' 
				code: 62
				xpdlObject: aXPDLPoolNode
				title: 'Pools wihout name'
				description: 'Each Pool must have a name'
				solution: 'Edit the Process Definition and add names to all Pools'
				)