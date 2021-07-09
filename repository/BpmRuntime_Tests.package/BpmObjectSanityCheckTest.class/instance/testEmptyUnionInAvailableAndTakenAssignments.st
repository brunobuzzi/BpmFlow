test
testEmptyUnionInAvailableAndTakenAssignments

	testRoot environmentsDo: [:environment | 
		environment isAdminsEnvironment ifFalse: [
			environment applicationsDo: [:app | 
				self assert: (app availableTasksMatrix getAllAssignments intersection: app takenTasksMatrix getAllAssignments) isEmpty
			].
		].
	].