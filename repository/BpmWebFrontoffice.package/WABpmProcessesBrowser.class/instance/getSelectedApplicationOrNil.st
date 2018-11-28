search area
getSelectedApplicationOrNil

	^self getApplicationManagerClass getAnyApplicationNamed: (self searchValueAt: 'application' ifAbsent: '') ifNone: [nil]