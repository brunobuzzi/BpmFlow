execution simulation
getAssignmentAndAssociate: aBpmTaskInstance withForm: anOrbeonFormInstance on: aBpmProcessInstance
	"The receiver get the <aBpmTaskAssignment> for <aBpmTaskInstance> from the <aBpmTasksHolderMatrix> and associate the three:
	<aBpmTaskInstance> <--> <anOrbeonFormInstance>
	<aBpmTaskAssignment> <--> <anOrbeonFormInstance>"

	| assignment |

	assignment := self getAssignmentFor: aBpmTaskInstance on: aBpmProcessInstance.

	aBpmTaskInstance externalObject: anOrbeonFormInstance.
	anOrbeonFormInstance assignment: assignment.

	^assignment