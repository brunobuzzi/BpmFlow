query variables
getApplication

	^self session systemRoot applicationNamed: self getApplicationName ifNone: []