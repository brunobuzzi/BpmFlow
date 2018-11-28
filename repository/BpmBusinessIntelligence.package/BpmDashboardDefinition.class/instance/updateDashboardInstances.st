dashboard generation
updateDashboardInstances
	"The receiver update its <BpmDashboardInstance>s depending on the recursion policy <aBpmDashboardRecursionDefinition> "

	(items select: [:itemDefinition | itemDefinition isOutDated]) do: [:itemDefinition | | lastItemInstanceOrDefinition startDate |
		lastItemInstanceOrDefinition := itemDefinition lastDashboardInstanceOrNil ifNil: [itemDefinition] ifNotNil: [:itemInstance | itemInstance].
		startDate := itemDefinition modifyStartDateOnUpdate
			ifTrue: [itemDefinition updateStartDate: lastItemInstanceOrDefinition startDate]
			ifFalse: [lastItemInstanceOrDefinition startDate].
		itemDefinition generateDashboardInstanceFrom: startDate to: Date today.	
	].