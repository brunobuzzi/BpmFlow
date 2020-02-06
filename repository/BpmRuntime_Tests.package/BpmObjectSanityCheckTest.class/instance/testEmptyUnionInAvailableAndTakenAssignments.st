test
testEmptyUnionInAvailableAndTakenAssignments

	self defaultEnvironmentClass cache do: [:environment | 
		environment applications do: [:app | 
			self assert: (app availableTasksMatrix getAllAssignments intersection: app takenTasksMatrix getAllAssignments) isEmpty
		].
	].