warning items creation
addUnsupportedReceiveTaskItem

	detectedItems add: (
		self xpdlItemReportClass new 
			code: 740;
			type: 'Error';
			title: 'Unsupported Element';
			description: 'Receive Tasks are NOT supported';
			solution: 'Change the Task Type';
			yourself)