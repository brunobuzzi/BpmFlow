warning items creation
addMissingMandatoryFieldItem: aString inForm: anOrbeonFormDefinition inApplication: anApplication

	detectedItems add: (
		self createItemReportType: 'Error' 
					code: 604
					title: 'Missing Mandatory Forms Field'
					description: 'Form [', anOrbeonFormDefinition formName, '] in Orbeon Application [', anApplication applicationName, '] has NO mandatory field [', aString,']'
					solution: 'Add missing mandatory fields to the Form Definition. Mandatori fields (s, k, oop, uuid, assignmentOop, username, rol, processId)'
					)