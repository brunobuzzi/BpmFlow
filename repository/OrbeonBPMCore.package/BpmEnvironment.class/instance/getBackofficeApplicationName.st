env names
getBackofficeApplicationName

	^applicationsNames at: 'backoffice' ifAbsent: ['Flow Backoffice']