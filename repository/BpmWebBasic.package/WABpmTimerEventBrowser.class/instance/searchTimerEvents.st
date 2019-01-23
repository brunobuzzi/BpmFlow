search operation
searchTimerEvents

	searchResult := OrderedCollection new.
	selectedLateralItem := nil.
	
	searchResult := self isTimerTypeCreation
							ifTrue: [self session user getAllCreationProcessesWithStartTimerIn: self session bpmEnvironment] 
							ifFalse: [self defaultTimerEventMonitor getIntermediateTimerEventsIn: self session bpmEnvironment for: self session user].