other
selectedApplication

	^self session systemRoot 
			applicationNamed: (searchValues at: 'application') 
			ifNone: [self session systemRoot newOrbeonApplication]