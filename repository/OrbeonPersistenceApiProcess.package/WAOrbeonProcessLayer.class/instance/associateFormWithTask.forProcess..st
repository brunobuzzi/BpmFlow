other
associateFormWithTask: aBpmTaskInstance forProcess: aBpmProcessInstace
	"The receiver associate the task <aBpmTaskInstance> with it's form instance in the process <aBpmProcessInstace>.
	This method is used in anonymous process creation.
	If the form <formInstance> is not set with an assignment --> the search will Fail. But an anonymous form does not have anAssignment so here one assignment is enforced"
	| formInstance assigment role |

	formInstance := aBpmTaskInstance externalObject.

	role := aBpmTaskInstance getRoles ifEmpty: [TaskWithNoRoleException signal: 'No roles for this task' ] ifNotEmpty: [:value | value first].

	assigment := (BpmTaskAssignment 
							newFor: aBpmProcessInstace 
							task: aBpmTaskInstance 
							in: (self getFinishedMatrixForApplication: formInstance getApplicationName))
						role: role;
						yourself.

	formInstance assignment: assigment.