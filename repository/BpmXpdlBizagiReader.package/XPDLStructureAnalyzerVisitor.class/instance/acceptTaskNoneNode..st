tasks
acceptTaskNoneNode: aXPDLTaskNoneNode

	self acceptActivityNode: aXPDLTaskNoneNode.

	(aXPDLTaskNoneNode isOrbeonTaskNode and: [(application hasDefinitionNamed: aXPDLTaskNoneNode getName) not])
	ifTrue: [self addNonExistingOrbeonFormItem: aXPDLTaskNoneNode]