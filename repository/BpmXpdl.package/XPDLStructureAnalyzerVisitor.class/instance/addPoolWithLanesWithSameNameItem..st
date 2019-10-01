warning items creation
addPoolWithLanesWithSameNameItem: aXPDLPoolNode

	detectedItems add: (
		self createItemReportType: 'Error' 
				code: 58
				xpdlObject: aXPDLPoolNode
				title: 'Lanes with the same name'
				description: 'Each Lane in a Pool must have an unique name'
				solution: 'Edit the Process Definition and change the names of Lanes in Pool'
				)