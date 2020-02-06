tasks assignments
getAllAvailableTaskAssignments

	^applications inject: Set new into: [:all :application | all addAll: application getAvailableTaskAssignments]