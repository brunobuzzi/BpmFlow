other
getAvailableApplications

	^AbstractApplication cache asOrderedCollection reject: [:each | each hasBpmEnvironment and:[each bpmEnvironment ~~ self selectedEnvironment]]