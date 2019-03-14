other
getAllTasks

	mainPanel modeIsFinishedTasks ifFalse: [^model getExecutedArtifacts, model getRunningArtifacts].

	^OrderedCollection with: model task