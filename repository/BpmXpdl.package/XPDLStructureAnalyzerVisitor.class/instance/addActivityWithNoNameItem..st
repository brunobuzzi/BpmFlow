warning items creation
addActivityWithNoNameItem: aXPDLActivityNode

	detectedItems add: (
		self createItemReportType: 'Error' 
					code: 104
					xpdlObject: aXPDLActivityNode
					title: 'Activities without Name'
					description: 'Activity type [', aXPDLActivityNode getName, '] in Process [', aXPDLActivityNode workflow getName, '] without name'
					solution: 'Add a name to the Activity')