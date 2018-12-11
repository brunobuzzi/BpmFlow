warning items creation
addUnsupportedSignalEventItem

	detectedItems add: (
		self xpdlItemReportClass new 
			code: 748;
			type: 'Error';
			title: 'Unsupported Element';
			description: 'Signal Events are NOT supported';
			solution: 'Remove the Event';
			yourself)