dashboard generation
isOutDated
	"Answer whether or not receiver has any item <BpmDashboardItemDefinition> that is outdated.
	If an item is outdated then generate a new <BpmDashboardInstence> for that item"

	^items anySatisfy: [:eachItem | eachItem isOutDated]