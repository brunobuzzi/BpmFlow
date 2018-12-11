warning items creation
addUnsupportedParallelMultipleEventItem

	detectedItems add: (
		self xpdlItemReportClass new 
			code: 736;
			type: 'Error';
			title: 'Unsupported Element';
			description: 'Parallel Multiple Events are NOT supported';
			solution: 'Remove the Event';
			yourself)