anonymous mapping
unregisterAnonymousMappingFor: formName in: appName

	^self anonymousFormMapping removeKey: (appName, '.', formName) ifAbsent: []