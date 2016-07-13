other
selectedApplication

	^self getApplicationManagerClass 
			getAnyApplicationNamed: (searchValues at: 'application') 
			ifNone: [self getOrbeonApplicationClass new]