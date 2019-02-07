free transitions
assignUserTo: aBpmTaskAssignment value: aBoolean
	"1- Create an aBpmTaskAssignment.
	2- Add the new assignment of 1) to process <anBpmProcessInstance>.
	3- Associate the Assignment with the Process.
	4- The user <aBpmUser> take the assignment <aBpmTaskAssignment>"

	aBoolean ifFalse: [^self].

	(listType = 'Current Tasks') ifTrue: [^self  unassignUserFrom: aBpmTaskAssignment].

	(listType = 'Possible Tasks') ifTrue: [^self assignUserTo: aBpmTaskAssignment].