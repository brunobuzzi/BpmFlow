warning items creation
addNonExistingOrbeonFormItem: aXPDLTaskNoneNode inApplication: anApplication

	detectedItems add: (
		self createItemReportType: 'Error' 
			code: 608
			xpdlObject: aXPDLTaskNoneNode
			title: 'Missing Orbeon Form'
			description: 'Form [', aXPDLTaskNoneNode getName, '] does not exist in Orbeon Application [', anApplication applicationName, ']'
			solution: 'Create the Form Definition in Orbeon Form Builder'
			)