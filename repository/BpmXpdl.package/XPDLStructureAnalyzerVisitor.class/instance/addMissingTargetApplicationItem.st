warning items creation
addMissingTargetApplicationItem

	detectedItems add: (
		self createItemReportType: 'Error' 
				code: 500
				title: 'Missing Target Application'
				description: 'Target Application in Task Send does NOT exist'
				solution: 'Change configuration of Task Send in Bizagi'
				)