warning items creation
addPoolWithoutNameItem

	detectedItems add: (
		self createItemReportType: 'Error' 
				code: 62
				title: 'Pools wihout name'
				description: 'Each Pool must have a name'
				solution: 'Edit the Process Definition and add names to all Pools'
				)