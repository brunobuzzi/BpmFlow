execution
associate: aBpmTaskAssignment withForm: anOrbeonFormInstance on: aBpmProcessInstance
	"The receiver associate the task in <aBpmTaskAssignment> with the form <anOrbeonFormInstance> and the form <anOrbeonFormInstance> with the assignment <aBpmTaskAssignment>.
	This method is used when <aBpmProcessDefinition> has an assignation policy. 
	New tasks are assigned automatically to users no need to send #takeTask: or #takeAndFinalizeTask: (the task is created and assigned immediately to a user)."

	aBpmTaskAssignment task externalObject: anOrbeonFormInstance. "the task now see the form"
	anOrbeonFormInstance assignment: aBpmTaskAssignment. "the form see the assignment"

	^aBpmTaskAssignment