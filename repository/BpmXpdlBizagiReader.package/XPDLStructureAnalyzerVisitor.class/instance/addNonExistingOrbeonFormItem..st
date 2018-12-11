warning items creation
addNonExistingOrbeonFormItem: aXPDLTaskNoneNode

	detectedItems add: (
		self xpdlItemReportClass new 
			code: 608;
			type: 'Error';
			title: 'Missing Orbeon Form';
			description: 'Form [', aXPDLTaskNoneNode getName, '] does not exist in Orbeon Application [', application applicationName, ']';
			solution: 'Create the Form Definition in Orbeon Form Builder';
			yourself)