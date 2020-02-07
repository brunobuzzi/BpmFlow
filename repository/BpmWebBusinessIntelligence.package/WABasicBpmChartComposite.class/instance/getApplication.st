query variables
getApplication

	^self defaultApplicationManagerClass applicationNamed: self getApplicationName ifNone: []