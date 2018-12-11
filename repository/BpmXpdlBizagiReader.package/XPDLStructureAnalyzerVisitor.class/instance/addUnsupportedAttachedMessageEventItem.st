warning items creation
addUnsupportedAttachedMessageEventItem

	detectedItems add: (
		self xpdlItemReportClass new 
			code: 700;
			type: 'Error';
			title: 'Unsupported Element';
			description: 'Attached Message Events are NOT supported';
			solution: 'Remove the Event';
			yourself)