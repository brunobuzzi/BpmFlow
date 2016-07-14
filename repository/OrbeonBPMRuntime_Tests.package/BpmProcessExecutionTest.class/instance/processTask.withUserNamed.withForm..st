execution simulation
processTask: aBpmTaskInstance withUserNamed: aString withForm: anOrbeonFormInstance
	"The receiver simulate the task processing of <aBpmTaskInstance> by user named <aString> in the process <aBpmProcessInstance>. 
	The task has the form instance <anOrbeonFormInstance>.
	1- Get the actual assignment of the task <aBpmTaskAssignment> from the tasks matrix.
	2- The user take the assignment.
	3- Associate the task and the form instance.
	4- The user finalize the assigment"

	^self processTask: aBpmTaskInstance withUserNamed: aString withForm: anOrbeonFormInstance on: procInstance