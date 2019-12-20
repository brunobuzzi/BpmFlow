other
getParentTopSubProcessTaskDefinition
	"Answer the Top <BpmSubProcessTaskDefinition> that initiated the creation of the receiver"

	^self getParentSubProcessTaskDefinition
		ifNil: [nil]
		ifNotNil: [:taskDef | 
						taskDef processDefinition isTopProcess
						ifTrue: [taskDef]
						ifFalse: [taskDef processDefinition getParentTopSubProcessTaskDefinition]
		].