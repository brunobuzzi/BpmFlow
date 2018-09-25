dashboard generation
updateDashboardInstances

	self isOutDated ifFalse: [^self].

	items do: [:itemDefinition | | lastItemInstanceOrDefinition startDate endDate |
		lastItemInstanceOrDefinition := itemDefinition lastDashboardInstanceOrNil ifNil: [itemDefinition] ifNotNil: [:itemInstance | itemInstance].
		startDate := lastItemInstanceOrDefinition startDate.
		endDate := lastItemInstanceOrDefinition endDate.
		itemDefinition generateDashboardInstanceFrom: startDate to: endDate.
	].