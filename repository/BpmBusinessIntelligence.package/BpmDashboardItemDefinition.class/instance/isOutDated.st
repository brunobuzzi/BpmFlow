outdated
isOutDated
	"Answer whether or not the receiver is outdated based on it recursion policy <recursion> <aBpmDashboardRecursionDefinition>"

	^recursion isOutDated: self lastUpdate for: self