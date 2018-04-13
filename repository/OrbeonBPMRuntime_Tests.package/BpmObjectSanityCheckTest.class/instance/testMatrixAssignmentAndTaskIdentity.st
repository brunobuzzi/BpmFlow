test
testMatrixAssignmentAndTaskIdentity
	"Check process tasks with assignments in the current and finished matrix"

	BpmProcessDefinition getAllProcessDefinition do: [:eachProcDef | 
		(eachProcDef processInstances reject: [:each | each isAborted])  do: [:procInstance | | currentMatrix finishedMatrix currentAssignments finishedAssignments executedActivities |
			currentMatrix := procInstance getAvailableProcessMatrix.
			finishedMatrix := procInstance getFinishedProcessMatrix.

			currentAssignments := currentMatrix getAllAssignments.
			finishedAssignments := finishedMatrix getAllAssignments.

			procInstance currentActivities do: [:eachTask | "the task must be on the running matrix or must be taken by a user"
				self assert: ((currentAssignments anySatisfy: [:eachAssign | eachAssign task == eachTask]) or:[(BpmUser getUserOrNilWorkingOn: eachTask) notNil])].

			executedActivities := procInstance isAnonymousStartEnabled ifTrue: [procInstance executedActivities allButFirst] ifFalse: [procInstance executedActivities].
			"if the process <isAnonymousStartEnabled> --> the first task has NO assignment because is sent by an outsider"
			executedActivities do: [:eachTask | self assert: (finishedAssignments anySatisfy: [:eachAssign | eachAssign task == eachTask]) ].

		].
	].