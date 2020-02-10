other
selectedApplication

	^self defaultApplicationManagerClass 
			applicationNamed: (searchValues at: 'application') 
			ifNone: [self getOrbeonApplicationClass new]