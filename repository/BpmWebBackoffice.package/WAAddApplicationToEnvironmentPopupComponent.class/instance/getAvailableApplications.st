other
getAvailableApplications

	^self session systemRoot getAllApplications asOrderedCollection reject: [:each | each hasBpmEnvironment and:[each bpmEnvironment ~~ self selectedEnvironment]]