warning items creation
addEventWithNoNameItem: aXPDLIntermediateNode

	detectedItems add: (
		self createItemReportType: 'Error' 
					code: 106
					xpdlObject: aXPDLIntermediateNode
					title: 'Event without Name'
					description: 'Event [', aXPDLIntermediateNode getName, '] in Process [', aXPDLIntermediateNode workflow getName, '] without name'
					solution: 'Add a name to the Event')