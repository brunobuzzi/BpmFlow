search area
getSelectedApplicationOrNil

	^self defaultApplicationManagerClass applicationNamed: (self searchValueAt: 'application' ifAbsent: '') ifNone: [nil]