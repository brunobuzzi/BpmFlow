xpdl tasks
acceptTaskNoneNode: aXPDLTaskNoneNode
	"The receiver check for:
	* Existence of <OrbeonPublishedFormDefinition> in the receiver <application>
	* Mandatory fields in non anonymous Forms"

	self acceptActivityNode: aXPDLTaskNoneNode.

	(aXPDLTaskNoneNode isOrbeonTaskNode and: [((self getApplicationFor: aXPDLTaskNoneNode) hasDefinitionNamed: aXPDLTaskNoneNode getName) not])
	ifTrue: [self addNonExistingOrbeonFormItem: aXPDLTaskNoneNode inApplication: (self getApplicationFor: aXPDLTaskNoneNode)].

	"Madatory fields are not needed when the Process has an anonymous start"
	(aXPDLTaskNoneNode workflow startNode isAnonymousStart and: [aXPDLTaskNoneNode workflow startNode outTransitions anySatisfy: [:each | each endNode == aXPDLTaskNoneNode]])
	ifFalse: [| formDef |
		formDef := (self getApplicationFor: aXPDLTaskNoneNode) definitionNamed: aXPDLTaskNoneNode getName.
		formDef ifNotNil: [formDef getMandatoryFieldsMissing do: [:missingFieldName | self addMissingMandatoryFieldItem: missingFieldName inForm: formDef inApplication: (self getApplicationFor: aXPDLTaskNoneNode)]].
	].