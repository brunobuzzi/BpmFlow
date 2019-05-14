execution
takeTask: aBpmTaskInstance forUserNamed: aString on: aBpmProcessInstance
	"The receiver take the task <aBpmTaskInstance> for user named <aString> in the process <aBpmProcessInstance>.
	1- Get the actual assignment of the task <aBpmTaskAssignment> from the tasks matrix.
	2- The user take the assignment.
	3- Answer the assignment <aBpmTaskAssignment>"
	| assignment |

	assignment := self getAssignmentFor: aBpmTaskInstance on: aBpmProcessInstance.

	"if <aBpmProcessInstance> is not running the anException stop the execution.
	Before #take: the object structure has to be connected (see above method):
		aBpmTaskInstance externalObject: anOrbeonFormInstance.
		anOrbeonFormInstance assignment: assignment.
	if not --> the object structure is broken (see issue #364)"

	assignment hasPerformers
	ifFalse: [
		(aBpmProcessInstance getAvailableProcessMatrix includesAssignment: assignment) ifFalse: [PEFImproperStateException signal: 'The assignment must be in Available Matrix'].
		(aBpmProcessInstance getTakenProcessMatrix includesAssignment: assignment) ifTrue: [PEFImproperStateException signal: 'The assignment must be in Available Matrix'].
	]
	ifTrue: [
		(aBpmProcessInstance getAvailableProcessMatrix includesAssignment: assignment forRoleNamed: (assignment getNextRoleIfNone: []) name) ifFalse: [PEFImproperStateException signal: 'The assignment must be in Available Matrix'].
		(aBpmProcessInstance getTakenProcessMatrix includesAssignment: assignment forRoleNamed: (assignment getNextRoleIfNone: []) name) ifTrue: [PEFImproperStateException signal: 'The assignment must be in Available Matrix'].
	].

	assignment checkIfIsStillAvailableToTake ifFalse: [PEFImproperStateException signal: 'The assignment must be Available'].
	(self getUserNamed: aString) take: assignment. "the user take the <BpmTaskAssignment>"
	assignment checkIfIsStillAvailableToTake ifTrue: [PEFImproperStateException signal: 'The assignment must be Taken'].

	(aBpmProcessInstance getTakenProcessMatrix includesAssignment: assignment) ifFalse: [PEFImproperStateException signal: 'The Assignment must be in Taken Matrix'].
	(aBpmProcessInstance getAvailableProcessMatrix includesAssignment: assignment) ifTrue: [PEFImproperStateException signal: 'The Assignment must be in Taken Matrix'].

	^assignment