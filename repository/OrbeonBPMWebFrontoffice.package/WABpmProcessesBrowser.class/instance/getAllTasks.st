other
getAllTasks

	selectedLateralItem ifNil: [^#()].

	self modeIsFinishedTasks ifFalse: [^selectedLateralItem getExecutedArtifacts, selectedLateralItem getRunningArtifacts].

	^OrderedCollection with: selectedLateralItem task