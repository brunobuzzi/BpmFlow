xpdl top elements
acceptLaneNode: aXPDLLaneNode

	(aXPDLLaneNode getName isNil and: [aXPDLLaneNode getName isEmpty]) ifTrue: [self addLaneWithNoNameItem: aXPDLLaneNode].

	"If the role does not exist when the process is being created --> the role is created at that time. 
	So it does not make sense to detect non existing roles if there are going to be created in the import process"
"
	(BpmFrontOfficeRole hasRoleNamed: aXPDLLaneNode getName in: (self getApplicationFor: aXPDLLaneNode)) 
	ifFalse: [self addNonExistingRoleItem: aXPDLLaneNode inApplication: (self getApplicationFor: aXPDLLaneNode)]
"