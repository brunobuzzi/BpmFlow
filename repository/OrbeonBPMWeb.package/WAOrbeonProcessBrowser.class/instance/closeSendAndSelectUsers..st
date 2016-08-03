process
closeSendAndSelectUsers: aBpmArtifactInstance

	assignationComposite := WAAssignTasksToUsers parent: self on: (OrderedCollection with: aBpmArtifactInstance)