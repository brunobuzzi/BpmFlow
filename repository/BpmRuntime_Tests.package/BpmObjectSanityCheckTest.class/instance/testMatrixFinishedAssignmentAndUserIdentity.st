test
testMatrixFinishedAssignmentAndUserIdentity
	"Check sanity of Finished Assignments in the Matrix and in BpmUser inbox"

	testRoot  environmentsDo: [:environment |
		environment getAllProcessDefinitions do: [:eachProcDef | 
			(eachProcDef processInstancesReject: [:each | each isAborted]) do: [:procInstance | | finishedMatrix finishedAssignments |
				finishedMatrix := procInstance getFinishedProcessMatrix.
				finishedAssignments := finishedMatrix getAllAssignments. "finished assignments in the entire Application"

				finishedAssignments do: [:eachAssing | self assert: (testRoot getUserOrNilFinishedTask: eachAssing task) notNil]

			].
		].
	].