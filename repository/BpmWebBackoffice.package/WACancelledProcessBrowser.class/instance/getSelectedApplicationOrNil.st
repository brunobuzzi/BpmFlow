search area
getSelectedApplicationOrNil

	^self defaultApplicationManagerClass getAnyApplicationNamed: (self searchValueAt: 'application' ifAbsent: '') ifNone: [nil]