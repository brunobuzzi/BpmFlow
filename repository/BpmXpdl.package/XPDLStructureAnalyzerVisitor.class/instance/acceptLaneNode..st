xpdl top elements
acceptLaneNode: aXPDLLaneNode

	(aXPDLLaneNode getName isNil and: [aXPDLLaneNode getName isEmpty]) ifTrue: [self addLaneWithNoNameItem: aXPDLLaneNode].

	(BpmFrontOfficeRole hasRoleNamed: aXPDLLaneNode getName in: (self getApplicationFor: aXPDLLaneNode)) 
	ifTrue: [self addNonExistingRoleItem: aXPDLLaneNode inApplication: (self getApplicationFor: aXPDLLaneNode)]