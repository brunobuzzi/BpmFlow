warning items creation
addMissingMandatoryFieldItem: aString inForm: anOrbeonFormDefinition

	detectedItems add: (
		self xpdlItemReportClass new 
					code: 604;
					type: 'Error';
					title: 'Missing Mandatory Forms Field';
					description: 'Form [', anOrbeonFormDefinition formName, '] in Orbeon Application [', application applicationName, '] has NO mandatory field [', aString,']';
					solution: 'Add missing mandatory fields to the Form Definition. Mandatori fields (s, k, oop, uuid, assignmentOop, username, rol, processId)';
					yourself)