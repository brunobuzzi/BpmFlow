query
getAllMatrixDictionaries

	^OrderedCollection 
		with: BpmAvailableTasksMatrix cache 
		with: BpmTakenTasksMatrix cache 
		with: BpmFinishedTasksMatrix cache