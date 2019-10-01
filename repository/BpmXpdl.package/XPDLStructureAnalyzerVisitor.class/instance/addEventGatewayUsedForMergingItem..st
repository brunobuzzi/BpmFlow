warning items creation
addEventGatewayUsedForMergingItem: aXPDLGatewayNode

	detectedItems add: (
		self createItemReportType: 'Error' 
					code: 204
					xpdlObject: aXPDLGatewayNode
					title: 'Merging Event Gateway'
					description: 'Merging Events Gateway are NOT allowed'
					solution: 'User a regular Gateway for Merging')