process
onSubProcessSelected: artifactDefinition

	selectedObject := nil.

	searchApplied := true.
	searchResult := OrderedCollection withAll: artifactDefinition processDefinition getProcessesTreeAsCollection.

	selectedLateralItem := artifactDefinition subProcessDefinition