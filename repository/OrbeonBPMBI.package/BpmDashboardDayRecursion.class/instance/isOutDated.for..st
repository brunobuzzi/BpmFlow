other
isOutDated: aTimeStmap for: aBpmDashboardItemDefinition
	"Answer whether or not <aBpmDashboardItemDefinition> is outdated based on receiver recursion policy with last update was on <aTimeStamp>"

	^aBpmDashboardItemDefinition isDayOutDated: aTimeStmap