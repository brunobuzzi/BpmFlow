search area
onApplicationChanged: appName

	searchValues 
		removeKey: 'form-definition' ifAbsent: [];
		removeKey: 'form-field' ifAbsent: [];
		at: 'application' put: appName.