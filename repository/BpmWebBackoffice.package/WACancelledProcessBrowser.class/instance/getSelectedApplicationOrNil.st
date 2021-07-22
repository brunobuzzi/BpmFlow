search area
getSelectedApplicationOrNil

	^self session systemRoot applicationNamed: (self searchValueAt: 'application' ifAbsent: '') ifNone: [nil]