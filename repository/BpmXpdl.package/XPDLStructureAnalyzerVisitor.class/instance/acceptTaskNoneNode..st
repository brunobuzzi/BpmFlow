xpdl tasks
acceptTaskNoneNode: aXPDLTaskNoneNode
	"The receiver check for:
	* Existence of <OrbeonPublishedFormDefinition> in the receiver <application>
	* Mandatory fields in non anonymous Forms"
	| application |

	application := self getApplicationFor: aXPDLTaskNoneNode.

	self acceptActivityNode: aXPDLTaskNoneNode.

	aXPDLTaskNoneNode isOrbeonTaskNode ifTrue: [ 
		application notNil ifTrue: [
			((application hasDefinitionNamed: aXPDLTaskNoneNode getName) or: [application hasDefinitionNamed: aXPDLTaskNoneNode reuseExternalObjectOfTaskNamed]) not
			ifTrue: [self addNonExistingOrbeonFormItem: aXPDLTaskNoneNode inApplication: application].
		].
	].

	(aXPDLTaskNoneNode isSeasideTaskNode and:[(Smalltalk includesKey: aXPDLTaskNoneNode getSeasideComponentName asSymbol) not])
	ifTrue: [self addNonExistingSeasideComponentItem: aXPDLTaskNoneNode].

	"Madatory fields are not needed (for the first form) when the Process has an anonymous start"
	(aXPDLTaskNoneNode workflowHasAnonymousStart and: [aXPDLTaskNoneNode workflowStartNodeOutTransitionsAnySatisfy: [:each | each endNode == aXPDLTaskNoneNode]])
	ifFalse: [| formDef |
		application ifNil: [^self].
		formDef := application definitionNamed: aXPDLTaskNoneNode getName.
		formDef ifNotNil: [formDef getMissingMandatoryFields do: [:missingFieldName | self addMissingMandatoryFieldItem: aXPDLTaskNoneNode fieldName: missingFieldName inForm: formDef inApplication: (self getApplicationFor: aXPDLTaskNoneNode)]].
	].