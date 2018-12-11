warning items creation
addMissingTargetProcessesItem

	detectedItems add: (
		self xpdlItemReportClass new 
				code: 504;
				type: 'Error';
				title: 'Missing Target Process';
				description: 'Target Application or Process in Task Send does NOT exist';
				solution: 'Change configuration of Task Send in Bizagi';
				yourself)