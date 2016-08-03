other
getNextTasks

	^nextTransitions collect: [:each | each endArtifact]