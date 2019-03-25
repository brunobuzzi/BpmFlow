test
testEmptyUnionInAvailableAndTakenAssignments
	| availableMatrixDictionary takenMatrixDictionary allAvailable allTaken |

	availableMatrixDictionary := self defaultAvailableTasksMatrixClass cache.
	takenMatrixDictionary := self defaultTakenTasksMatrixClass cache.

	allAvailable := OrderedCollection new.
	allTaken := OrderedCollection new.

	availableMatrixDictionary do: [:eachMatrix | allAvailable addAll: eachMatrix getAllAssignments].
	takenMatrixDictionary do: [:eachMatrix | allTaken addAll: eachMatrix getAllAssignments].

	self assert: (allTaken intersection: allAvailable) isEmpty