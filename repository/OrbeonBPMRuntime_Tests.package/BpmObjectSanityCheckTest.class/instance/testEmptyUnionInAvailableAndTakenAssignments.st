test
testEmptyUnionInAvailableAndTakenAssignments
	| availableMatrixDictionary takenMatrixDictionary allAvailable allTaken |

	availableMatrixDictionary := BpmAvailableTasksMatrix cache.
	takenMatrixDictionary := BpmTakenTasksMatrix cache.

	allAvailable := OrderedCollection new.
	allTaken := OrderedCollection new.

	availableMatrixDictionary do: [:eachMatrix | allAvailable addAll: eachMatrix getAllAssignments].
	takenMatrixDictionary do: [:eachMatrix | allTaken addAll: eachMatrix getAllAssignments].

	self assert: (allTaken intersection: allAvailable) isEmpty