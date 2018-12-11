warning items creation
addUnsupportedUserTaskItem

	detectedItems add: (
		self xpdlItemReportClass new 
			code: 752;
			type: 'Error';
			title: 'Unsupported Element';
			description: 'User Tasks are NOT supported';
			solution: 'Change the Task Type';
			yourself)