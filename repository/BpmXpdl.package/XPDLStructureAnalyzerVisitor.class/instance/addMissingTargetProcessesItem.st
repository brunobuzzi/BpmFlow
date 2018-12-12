warning items creation
addMissingTargetProcessesItem

	detectedItems add: (
		self createItemReportType: 'Error' 
				code: 504
				title: 'Missing Target Process'
				description: 'Target Application or Process in Task Send does NOT exist'
				solution: 'Change configuration of Task Send in Bizagi'
				)