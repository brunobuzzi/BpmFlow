warning items creation
addUnsupportedErrorEventItem

	detectedItems add: (
		self xpdlItemReportClass new 
			code: 720;
			type: 'Error';
			title: 'Unsupported Element';
			description: 'Error Events are NOT supported' ;
			solution: 'Remove the Event';
			yourself)