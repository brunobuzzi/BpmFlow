outdate
isOutDated
	"Answer whether or not the receiver is outdated based on it recursion policy <instanceRecursion> <aBpmDashboardRecursionDefinition>"

	^recursion isOutDated: self lastUpdate for: self