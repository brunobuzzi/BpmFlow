process
onTopProcessSelected: processDefinition

	selectedObject := nil.

	searchApplied := true.
	searchResult := OrderedCollection withAll: processDefinition getProcessesTreeAsCollection.

	selectedLateralItem := processDefinition