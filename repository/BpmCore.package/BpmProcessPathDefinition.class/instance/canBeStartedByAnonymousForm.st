anonymous form
canBeStartedByAnonymousForm
	"Answer whether or not the BpmProcessDefinition can be start by sending an anonymous form"

	processDefinition isSubProcess ifTrue: [^false].

	^(startEvent outTransitions size = 1) and: [startEvent outTransitions allSatisfy: [:each | each endArtifact isOrbeonTask]]