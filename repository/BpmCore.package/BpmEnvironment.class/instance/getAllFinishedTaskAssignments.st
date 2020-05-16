tasks assignments
getAllFinishedTaskAssignments

	^applications inject: Set new into: [:all :application | all addAll: application getFinishedTaskAssignments]