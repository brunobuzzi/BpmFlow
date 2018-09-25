dashboard generation
updateDashboardInstances
	"The receiver update its <BpmDashboardInstance>s depending on the recursion policy <aBpmDashboardRecursionDefinition> "

	self isOutDated ifFalse: [^self].

	items do: [:itemDefinition | | lastItemInstanceOrDefinition startDate endDate |
		lastItemInstanceOrDefinition := itemDefinition lastDashboardInstanceOrNil ifNil: [itemDefinition] ifNotNil: [:itemInstance | itemInstance].
		startDate := lastItemInstanceOrDefinition startDate.
		endDate := lastItemInstanceOrDefinition endDate. "Date current ?????"
		itemDefinition generateDashboardInstanceFrom: startDate to: endDate.	
	].