tasks assignments
getAllTakenTaskAssignments

	^applications inject: Set new into: [:all :application | all addAll: application getTakenTaskAssignments]