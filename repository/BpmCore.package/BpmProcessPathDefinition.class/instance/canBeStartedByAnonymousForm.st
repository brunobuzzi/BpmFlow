anonymous form
canBeStartedByAnonymousForm
	"Answer whether or not the BpmProcessDefinition can be start by sending an anonymous form"

	processDefinition isSubProcess ifTrue: [^false].

	^(startEvent outTransitionsSize = 1) and: [startEvent outTransitionsAllSatisfy: [:each | each endArtifact isOrbeonTask]]