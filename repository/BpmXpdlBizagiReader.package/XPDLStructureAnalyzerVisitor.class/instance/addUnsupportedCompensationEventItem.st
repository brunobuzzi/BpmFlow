warning items creation
addUnsupportedCompensationEventItem

	detectedItems add: (
		self xpdlItemReportClass new 
			code: 708;
			type: 'Error';
			title: 'Unsupported Element';
			description: 'Compensation Events are NOT supported' ;
			solution: 'Remove the Event';
			yourself)