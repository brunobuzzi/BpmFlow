xpdl top elements
acceptLaneNode: aXPDLLaneNode

	(aXPDLLaneNode getName isNil and: [aXPDLLaneNode getName isEmpty]) ifTrue: [self addLaneWithNoNameItem: aXPDLLaneNode].

	(BpmFrontOfficeRole hasRoleNamed: aXPDLLaneNode getName in: application) ifTrue: [self addNonExistingRoleItem: aXPDLLaneNode]