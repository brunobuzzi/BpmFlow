other
associateFormWithTask: aBpmTaskInstance forProcess: aBpmProcessInstace
	"The receiver associate the task <aBpmTaskInstance> with it's form instance in the process <aBpmProcessInstace>.
	This method is used in anonymous process creation.
	If the form <formInstance> is not set with an assignment --> the search will Fail. But an anonymous form does not have anAssignment so here one assignment is enforced"
	| formInstance assigment roleName |

	formInstance := aBpmTaskInstance externalObject.

	roleName := aBpmTaskInstance getRoles ifEmpty: ['anonymous-role'] ifNotEmpty: [:value | value first name].

	assigment := (BpmTaskAssignment 
							newFor: aBpmProcessInstace 
							task: aBpmTaskInstance 
							in: (self getFinishedMatrixForApplication: formInstance getApplicationName))
						roleName: roleName;
						yourself.

	formInstance assignment: assigment.