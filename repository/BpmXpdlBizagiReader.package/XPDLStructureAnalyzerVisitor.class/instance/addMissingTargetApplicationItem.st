warning items creation
addMissingTargetApplicationItem

	detectedItems add: (
		self xpdlItemReportClass new 
				code: 500;
				type: 'Error';
				title: 'Missing Target Application';
				description: 'Target Application in Task Send does NOT exist';
				solution: 'Change configuration of Task Send in Bizagi';
				yourself)