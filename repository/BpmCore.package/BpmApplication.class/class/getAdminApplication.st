other
getAdminApplication

	^self applicationNamed: self adminApplicationName ifNone: [nil]