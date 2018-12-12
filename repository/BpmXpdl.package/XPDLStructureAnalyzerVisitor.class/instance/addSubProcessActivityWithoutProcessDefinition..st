warning items creation
addSubProcessActivityWithoutProcessDefinition: aXPDLSubProcessNode

	detectedItems add: (
		self createItemReportType: 'Error' 
					code: 300
					title: 'Sub Process Activity without Process Definition'
					description: 'Sub Process Activity [', aXPDLSubProcessNode getName, '] in Process  [', aXPDLSubProcessNode workflow package getName, '] has NO Process Definition'
					solution: 'Define in Bizagi a SubProcess with the same Sheet name as the SubProcess node (in the parent Process definition)')