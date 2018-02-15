search operation
searchTimerEvents
	| appName procName |

	searchResult := OrderedCollection new.
	selectedLateralItem := nil.
	
	appName := self searchValueAt: 'application' ifAbsent: [''].
	procName := self searchValueAt: 'process-type' ifAbsent: [''].

	searchResult := self isTimerTypeCreation
							ifTrue: [self defaultTimerEventMonitor getAllTimerEventsForProcessCreation] 
							ifFalse: [self defaultTimerEventMonitor getAllIntermediateTimerEvents].