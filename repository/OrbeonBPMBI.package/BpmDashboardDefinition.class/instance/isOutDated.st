dashboard generation
isOutDated
	"Answer whether or not the receiver is outdated based on it recursion policy <instanceRecursion> <aBpmDashboardRecursionDefinition>"

	^instanceRecursion isOutDated: self lastUpdate for: self