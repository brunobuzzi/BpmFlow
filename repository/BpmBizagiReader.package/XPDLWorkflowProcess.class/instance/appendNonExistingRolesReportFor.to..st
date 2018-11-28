import warning
appendNonExistingRolesReportFor: anOrbeonApplication to: anOrderedCollection

	(self getNonExistingRolesNamesIn: anOrbeonApplication) do: [:rolName | | itemReport |
		itemReport := XPDLItemImportReport new type: 'Warning';
			title: 'Missing Role';
			description: 'Role named [', rolName, '] does not exist in Orbeon Application [', anOrbeonApplication applicationName, ']';
			solution: 'Add the role to the Orbeon Application';
			yourself.
		anOrderedCollection add: itemReport.].