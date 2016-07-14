execution simulation
takeTask: aBpmTaskInstance forUserNamed: aString withForm: anOrbeonFormInstance on: aBpmProcessInstance
	"The receiver take the task <aBpmTaskInstance> for user named <aString> in the process <aBpmProcessInstance>. 
	The task has the form instance <anOrbeonFormInstance>.
	1- Get the actual assignment of the task <aBpmTaskAssignment> from the tasks matrix.
	2- The user take the assignment.
	3- Associate the task and the form instance.
	4- Answer the assignment <aBpmTaskAssignment>"
	| assignment |

	assignment := self getAssignmentFor: aBpmTaskInstance on: aBpmProcessInstance.

	(self getUserNamed: aString) take: assignment.

	aBpmTaskInstance externalObject: anOrbeonFormInstance.
	anOrbeonFormInstance assignment: assignment.

	^assignment