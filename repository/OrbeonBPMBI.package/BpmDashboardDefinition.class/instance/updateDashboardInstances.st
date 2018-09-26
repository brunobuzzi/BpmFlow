dashboard generation
updateDashboardInstances
	"The receiver update its <BpmDashboardInstance>s depending on the recursion policy <aBpmDashboardRecursionDefinition> "

	(items select: [:each | each isOutDated]) do: [:itemDefinition | | lastItemInstanceOrDefinition startDate endDate |
		lastItemInstanceOrDefinition := itemDefinition lastDashboardInstanceOrNil ifNil: [itemDefinition] ifNotNil: [:itemInstance | itemInstance].
		startDate := lastItemInstanceOrDefinition startDate. "??????????" 
		endDate := lastItemInstanceOrDefinition endDate. "Date current ?????"
		itemDefinition generateDashboardInstanceFrom: startDate to: endDate.	
	].