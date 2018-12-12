warning items creation
addNonExistingOrbeonFormItem: aXPDLTaskNoneNode

	detectedItems add: (
		self createItemReportType: 'Error' 
			code: 608
			title: 'Missing Orbeon Form'
			description: 'Form [', aXPDLTaskNoneNode getName, '] does not exist in Orbeon Application [', application applicationName, ']'
			solution: 'Create the Form Definition in Orbeon Form Builder'
			)