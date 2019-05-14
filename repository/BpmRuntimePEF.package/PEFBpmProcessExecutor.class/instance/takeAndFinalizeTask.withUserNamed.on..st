execution
takeAndFinalizeTask: aBpmTaskInstance withUserNamed: aString on: aBpmProcessInstance
	"The receiver simulate the task processing of <aBpmTaskInstance> by user named <aString> in the process <aBpmProcessInstance>. 
	1- Get the actual assignment of the task <aBpmTaskAssignment> from the tasks matrix.
	2- The user take the assignment.
	3- The user finalize the assigment"
	| assignment |

	assignment := self takeTask: aBpmTaskInstance forUserNamed: aString on: aBpmProcessInstance.

	(self getAssignmentFor: aBpmTaskInstance on: aBpmProcessInstance ifNone: [nil]) 
	ifNotNil: [PEFImproperStateException signal: 'The assignment should be already taken and not present in Available Matrix']. "the assignment has been already taken --> this must answer nil"

	self finalizeAssignment: assignment withUserNamed: aString on: aBpmProcessInstance.

	^assignment