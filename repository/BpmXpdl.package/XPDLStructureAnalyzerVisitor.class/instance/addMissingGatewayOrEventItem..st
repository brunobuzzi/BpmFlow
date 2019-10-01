warning items creation
addMissingGatewayOrEventItem: aXPDLTaskSendNode

	detectedItems add: (
		self createItemReportType: 'Warning' 
				code: 508
				xpdlObject: aXPDLTaskSendNode
				title: 'Missing Gateway or Event'
				description: 'Target Process does NOT have configured Gateway or Event'
				solution: 'Change configuration of Task Send in Bizagi'
				)