tasks
acceptTaskNoneNode: aXPDLTaskNoneNode

	self acceptActivityNode: aXPDLTaskNoneNode.

	(aXPDLTaskNoneNode isOrbeonTaskNode and: [(application hasDefinitionNamed: aXPDLTaskNoneNode getName) not])
	ifTrue: [self addNonExistingOrbeonFormItem: aXPDLTaskNoneNode].

	"Madatory fields are not needed when the Process has an anonymous start"
	(aXPDLTaskNoneNode workflow startNode isAnonymousStart and: [aXPDLTaskNoneNode workflow startNode outTransitions anySatisfy: [:each | each endNode == aXPDLTaskNoneNode]])
	ifFalse: [| formDef |
		formDef := application definitionNamed: aXPDLTaskNoneNode getName.
		formDef ifNotNil: [formDef getMandatoryFieldsMissing do: [:missingFieldName | self addMissingMandatoryFieldItem: missingFieldName inForm: formDef]].
	].