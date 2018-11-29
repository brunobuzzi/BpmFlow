import warning
appendNonExistingFormsReportFor: anApplication to: anOrderedCollection

	anApplication isObeonApplication ifFalse: [^anOrderedCollection].

	(self getNonExistingFormNamesIn: anApplication) do: [:formName | | itemReport |
		itemReport := XPDLItemImportReport new 
			code: 608;
			type: 'Error';
			title: 'Missing Orbeon Form';
			description: 'Form [', formName, '] does not exist in Orbeon Application [', anApplication applicationName, ']';
			solution: 'Create the Form Definition in Orbeon Form Builder';
			yourself.
		anOrderedCollection add: itemReport.].