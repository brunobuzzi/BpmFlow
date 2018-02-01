execution simulation
associate: aBpmTaskAssignment withForm: anOrbeonFormInstance on: aBpmProcessInstance
	""

	aBpmTaskAssignment task externalObject: anOrbeonFormInstance.
	anOrbeonFormInstance assignment: aBpmTaskAssignment.

	^aBpmTaskAssignment