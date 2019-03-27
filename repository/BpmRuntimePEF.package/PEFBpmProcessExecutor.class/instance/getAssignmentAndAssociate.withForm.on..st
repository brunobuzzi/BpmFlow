execution
getAssignmentAndAssociate: aBpmTaskInstance withForm: anOrbeonFormInstanceOrBusinessObject on: aBpmProcessInstance
	"The receiver get the <aBpmTaskAssignment> for <aBpmTaskInstance> from the <aBpmTasksHolderMatrix> and associate the three:
	<aBpmTaskInstance> <--> <anOrbeonFormInstance>
	<aBpmTaskAssignment> <--> <anOrbeonFormInstance>"
	| assignment |

	assignment := self getAssignmentFor: aBpmTaskInstance on: aBpmProcessInstance.

	aBpmTaskInstance externalObject: anOrbeonFormInstanceOrBusinessObject.

	[anOrbeonFormInstanceOrBusinessObject assignment: assignment]
		on: Error 
		do: [:ex | PEFNoAssignmentAssociationException signal: anOrbeonFormInstanceOrBusinessObject className, ' must implement #assignment: message !'  ] . 

	^assignment