warning items creation
addIsolatedActivityItemFor: aXPDLObject

	detectedItems add: (
		self createItemReportType: 'Warning' 
			code: 120
			title: 'Isolated Activity'
			description: 'Activity [', aXPDLObject getName, '] in Process [', aXPDLObject workflow getName, '] is Isolated'
			solution: 'Delete the Activity or connect the Activity to some other element in the Process definition')