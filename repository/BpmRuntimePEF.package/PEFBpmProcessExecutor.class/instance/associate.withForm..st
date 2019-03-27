execution
associate: aBpmTaskAssignment withForm: anOrbeonFormInstanceOrBusinessObject
	"The receiver associate the task in <aBpmTaskAssignment> with the form <anOrbeonFormInstance> and the form <anOrbeonFormInstance> with the assignment <aBpmTaskAssignment>.
	This method is used when <aBpmProcessDefinition> has an assignation policy. 
	New tasks are assigned automatically to users no need to send #takeTask: or #takeAndFinalizeTask: (the task is created and assigned immediately to a user)."

	"the task now see the form"
	aBpmTaskAssignment task externalObject: anOrbeonFormInstanceOrBusinessObject. 
	"the form see the assignment"
	[anOrbeonFormInstanceOrBusinessObject assignment: aBpmTaskAssignment] 
		on: Error 
		do: [:ex | PEFNoAssignmentAssociationException signal: anOrbeonFormInstanceOrBusinessObject className, ' must implement #assignment: message !'  ] . 

	^aBpmTaskAssignment