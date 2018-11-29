import warning
appendNonExistingFormsReportFor: anOrbeonApplication to: anOrderedCollection

	(self getNonExistingFormNamesIn: anOrbeonApplication) do: [:formName | | itemReport |
		itemReport := XPDLItemImportReport new 
			code: 608;
			type: 'Error';
			title: 'Missing Orbeon Form';
			description: 'Form [', formName, '] does not exist in Orbeon Application [', anOrbeonApplication applicationName, ']';
			solution: 'Create the Form Definition in Orbeon Form Builder';
			yourself.
		anOrderedCollection add: itemReport.].