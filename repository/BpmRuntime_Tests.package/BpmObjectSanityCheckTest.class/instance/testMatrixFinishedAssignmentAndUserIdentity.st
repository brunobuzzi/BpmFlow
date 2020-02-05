test
testMatrixFinishedAssignmentAndUserIdentity
	"Check sanity of Finished Assignments in the Matrix and in BpmUser inbox"

	self defaultEnvironmentClass cache do: [:environment |
		environment getAllProcessDefinitions do: [:eachProcDef | 
			(eachProcDef processInstances reject: [:each | each isAborted]) do: [:procInstance | | finishedMatrix finishedAssignments |
				finishedMatrix := procInstance getFinishedProcessMatrix.
				finishedAssignments := finishedMatrix getAllAssignments. "finished assignments in the entire Application"

				finishedAssignments do: [:eachAssing | self assert: (self defaultBpmUserClass getUserOrNilFinishedTask: eachAssing task) notNil]

			].
		].
	].