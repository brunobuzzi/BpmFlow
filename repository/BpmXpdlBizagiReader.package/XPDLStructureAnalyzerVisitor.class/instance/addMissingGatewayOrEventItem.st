warning items creation
addMissingGatewayOrEventItem

	detectedItems add: (
		self xpdlItemReportClass new 
				code: 508;
				type: 'Error';
				title: 'Missing Gateway or Event';
				description: 'Target Process does NOT have configured Gateway or Event';
				solution: 'Change configuration of Task Send in Bizagi';
				yourself)