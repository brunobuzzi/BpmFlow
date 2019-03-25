query
getAllMatrixDictionaries

	^OrderedCollection 
		with: self defaultAvailableTasksMatrixClass cache 
		with: self defaultTakenTasksMatrixClass cache 
		with: self defaultFinishedTasksMatrixClass cache