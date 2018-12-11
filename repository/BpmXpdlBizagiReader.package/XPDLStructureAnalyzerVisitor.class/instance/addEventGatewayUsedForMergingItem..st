warning items creation
addEventGatewayUsedForMergingItem: aXPDLGatewayNode

	detectedItems add: (
		self xpdlItemReportClass new 
					code: 204;
					type: 'Error';
					title: 'Merging Event Gateway';
					description: 'Merging Events Gateway are NOT allowed';
					solution: 'User a regular Gateway for Merging';
					yourself)