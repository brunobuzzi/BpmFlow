other
isOutDated: aTimeStmap for: aBpmDashboardDefinition
	"Answer whether or not <aBpmDashboardDefinition> is outdated based on receiver recursion policy with last update was on <aTimeStamp>"

	^aBpmDashboardDefinition isWeekOutDated: aTimeStmap