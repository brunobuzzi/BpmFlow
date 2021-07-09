search operation
searchTimerEvents

	searchResult := OrderedCollection new.
	selectedLateralItem := nil.
	
	searchResult := self isTimerTypeCreation
							ifTrue: [self session user getAllCreationProcessesWithStartTimerIn: self session bpmEnvironment] 
							ifFalse: [self session systemRoot getIntermediateTimerEventsIn: self session bpmEnvironment for: self session user].