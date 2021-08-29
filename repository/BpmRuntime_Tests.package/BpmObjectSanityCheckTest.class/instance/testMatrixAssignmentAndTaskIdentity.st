test
testMatrixAssignmentAndTaskIdentity
	"Check process tasks with assignments in the current and finished matrix"

	testRoot environmentsDo: [:environment |
		environment getAllProcessDefinitions do: [:eachProcDef | 
			(eachProcDef processInstancesReject: [:each | each isAborted])  do: [:procInstance | | availableMatrix takenMatrix finishedMatrix currentAssignments takenAssignments finishedAssignments executedActivities |
				availableMatrix := procInstance getAvailableProcessMatrix.
				takenMatrix := procInstance getTakenProcessMatrix.
				finishedMatrix := procInstance getFinishedProcessMatrix.

				currentAssignments := availableMatrix getAllAssignments.
				takenAssignments := takenMatrix getAllAssignments.
				finishedAssignments := finishedMatrix getAllAssignments.

				procInstance currentActivities do: [:eachTask | "the task must be on the running matrix or (must be taken by a user and be in taken matrix)"
					self assert: ((currentAssignments anySatisfy: [:eachAssign | eachAssign task == eachTask]) 
										or:[(testRoot getUserOrNilWorkingOn: eachTask) notNil and: [takenAssignments anySatisfy: [:eachAssign | eachAssign task == eachTask]]])
				].

				executedActivities := procInstance isAnonymousStartEnabled ifTrue: [procInstance executedActivities allButFirst] ifFalse: [procInstance executedActivities].
				"if the process <isAnonymousStartEnabled> --> the first task has NO assignment because is sent by an outsider"
				executedActivities do: [:eachTask | self deny: (currentAssignments anySatisfy: [:eachAssign | eachAssign task == eachTask])].
				executedActivities do: [:eachTask | self deny: (takenAssignments anySatisfy: [:eachAssign | eachAssign task == eachTask])].
				executedActivities do: [:eachTask | self assert: (finishedAssignments anySatisfy: [:eachAssign | eachAssign task == eachTask])].

			].
		].
	].