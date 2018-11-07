execution
associate: aBpmTaskAssignment withForm: anOrbeonFormInstance on: aBpmProcessInstance
	"The receiver associate the task in <aBpmTaskAssignment> with the form <anOrbeonFormInstance> and the form <anOrbeonFormInstance> with the assignment <aBpmTaskAssignment>"

	aBpmTaskAssignment task externalObject: anOrbeonFormInstance. "the task now see the form"
	anOrbeonFormInstance assignment: aBpmTaskAssignment. "the form see the assignment"

	^aBpmTaskAssignment