*bpmruntime
initializeForBpmFlow

	availableTasksMatrix := BpmAvailableTasksMatrix newOn: self.
	finishedTasksMatrix := BpmFinishedTasksMatrix newOn: self.
	takenTasksMatrix := BpmTakenTasksMatrix newOn: self.