search operation
searchTimerEvents
	| appName procName |

	searchResult := OrderedCollection new.
	selectedLateralItem := nil.
	
	appName := self searchValueAt: 'application' ifAbsent: [''].
	procName := self searchValueAt: 'process-type' ifAbsent: [''].

	searchResult := self isTimerTypeCreation
							ifTrue: [(self session user getAllProcessDefinitionIn: self session bpmEnvironment) select: [:each | each hasCreationTimer] ] 
							ifFalse: [self defaultTimerEventMonitor getIntermediateTimerEventsIn: self session bpmEnvironment for: self session user].