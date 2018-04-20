execution simulation
takeTask: aBpmTaskInstance forUserNamed: aString withForm: anOrbeonFormInstance on: aBpmProcessInstance
	"The receiver take the task <aBpmTaskInstance> for user named <aString> in the process <aBpmProcessInstance>. 
	The task has the form instance <anOrbeonFormInstance>.
	1- Get the actual assignment of the task <aBpmTaskAssignment> from the tasks matrix.
	2- The user take the assignment.
	3- Associate the task and the form instance.
	4- Answer the assignment <aBpmTaskAssignment>"
	| assignment |

	assignment := self getAssignmentAndAssociate: aBpmTaskInstance withForm: anOrbeonFormInstance on: aBpmProcessInstance.

	"if <aBpmProcessInstance> is not running the anException stop the execution.
	Before #take: the object structure has to be connected (see above method):
		aBpmTaskInstance externalObject: anOrbeonFormInstance.
		anOrbeonFormInstance assignment: assignment.
	if not --> the object structure is broken (see issue #364)"

	assignment hasPerformers
	ifFalse: [
		self assert: (aBpmProcessInstance getAvailableProcessMatrix includesAssignment: assignment).
		self deny: (aBpmProcessInstance getTakenProcessMatrix includesAssignment: assignment).
	]
	ifTrue: [
		self assert: (aBpmProcessInstance getAvailableProcessMatrix includesAssignment: assignment forRoleNamed: (assignment getNextRoleIfNone: []) name).
		self deny: (aBpmProcessInstance getTakenProcessMatrix includesAssignment: assignment forRoleNamed: (assignment getNextRoleIfNone: []) name).
	].

	(self getUserNamed: aString) take: assignment. "the user take the <BpmTaskAssignment>"

	self assert: (aBpmProcessInstance getTakenProcessMatrix includesAssignment: assignment).
	self deny: (aBpmProcessInstance getAvailableProcessMatrix includesAssignment: assignment).

	^assignment