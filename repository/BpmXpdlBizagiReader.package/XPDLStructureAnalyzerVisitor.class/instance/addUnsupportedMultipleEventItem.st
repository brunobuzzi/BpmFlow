warning items creation
addUnsupportedMultipleEventItem

	detectedItems add: (
		self xpdlItemReportClass new 
			code: 732;
			type: 'Error';
			title: 'Unsupported Element';
			description: 'Multiple Events are NOT supported';
			solution: 'Remove the Event';
			yourself)