warning items creation
addPoolWithoutLanesItem: aXPDLPoolNode

	detectedItems add: (
		self createItemReportType: 'Error' 
				code: 54
				xpdlObject: aXPDLPoolNode
				title: 'Pools wihout Lanes'
				description: 'Each Pool must have at least one Lane'
				solution: 'Edit the Process Definition and add Lanes to Pools'
				)