warning items creation
addUnsupportedComplexGatewayItem

	detectedItems add: (
		self xpdlItemReportClass new 
			code: 712;
			type: 'Error';
			title: 'Unsupported Element';
			description: 'Complex Gateways are NOT supported' ;
			solution: 'Change the Gateway Type';
			yourself)