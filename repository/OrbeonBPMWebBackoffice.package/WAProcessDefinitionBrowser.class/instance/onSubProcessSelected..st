process
onSubProcessSelected: aBpmTransitionDefinition

	selectedObject := nil.

	searchApplied := true.
	searchResult := OrderedCollection withAll: aBpmTransitionDefinition getProcessesTreeAsCollection.

	selectedLateralItem := aBpmTransitionDefinition