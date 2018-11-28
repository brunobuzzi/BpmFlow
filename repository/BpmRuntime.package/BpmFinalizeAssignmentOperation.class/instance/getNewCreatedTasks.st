other
getNewCreatedTasks

	^nextTransitions collect: [:each | each endArtifact] thenSelect: [:each | each isTask]