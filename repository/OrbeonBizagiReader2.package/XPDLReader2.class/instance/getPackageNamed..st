other
getPackageNamed: aString

	^xpdlPackages at: aString ifAbsent: [nil]