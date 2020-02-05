query
getAllProcessNamesIn: appName

	^(self defaultApplicationManagerClass applicationNamed: appName ifNone: [^#()]) getAllProcessDefinitionsNames