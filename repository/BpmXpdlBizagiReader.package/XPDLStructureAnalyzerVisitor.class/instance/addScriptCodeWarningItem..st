warning items creation
addScriptCodeWarningItem: aString

	detectedItems add: 
		(self xpdlItemReportClass new 
				code: 124;
				type: 'Error';
				title: 'Task Script Error';
				description: aString;
				solution: 'The Script must be a block with two arguments: [:process :script | ]';
				yourself)