warning items creation
addMissingTargetApplicationItem: aXPDLTaskSendNode

	detectedItems add: (
		self createItemReportType: 'Error' 
				code: 500
				xpdlObject: aXPDLTaskSendNode
				title: 'Missing Target Application'
				description: 'Target Application in Task Send does NOT exist'
				solution: 'Change configuration of Task Send in Bizagi'
				)