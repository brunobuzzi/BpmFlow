test
testMatrixFinishedAssignmentAndUserIdentity
	"Check sanity of Finished Assignments in the Matrix and in BpmUser inbox"

	BpmProcessDefinition getAllProcessDefinition do: [:eachProcDef | 
		(eachProcDef processInstances reject: [:each | each isAborted])  do: [:procInstance | | finishedMatrix finishedAssignments |
			finishedMatrix := procInstance getFinishedProcessMatrix.
			finishedAssignments := finishedMatrix getAllAssignments.

			self assert: (finishedAssignments allSatisfy: [:eachAssing | (BpmUser getUserOrNilFinishedTask: eachAssing task) notNil]). 

		].
	].