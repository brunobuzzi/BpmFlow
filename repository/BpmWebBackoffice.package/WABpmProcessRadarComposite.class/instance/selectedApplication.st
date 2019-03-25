other
selectedApplication

	^self defaultApplicationManagerClass 
			getAnyApplicationNamed: (searchValues at: 'application') 
			ifNone: [self getOrbeonApplicationClass new]