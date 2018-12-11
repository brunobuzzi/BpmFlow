warning items creation
addUnsupportedConditionalEventItem

	detectedItems add: (
		self xpdlItemReportClass new 
			code: 716;
			type: 'Error';
			title: 'Unsupported Element';
			description: 'Conditional Events are NOT supported' ;
			solution: 'Remove the Event';
			yourself)