warning items creation
addUnsupportedEscalationEventItem

	detectedItems add: (
		self xpdlItemReportClass new 
			code: 724;
			type: 'Error';
			title: 'Unsupported Element';
			description: 'Escalation Events are NOT supported';
			solution: 'Remove the Event';
			yourself)