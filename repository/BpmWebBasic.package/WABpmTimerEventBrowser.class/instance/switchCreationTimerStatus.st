other
switchCreationTimerStatus

	selectedLateralItem automaticCreationIsActive
	ifTrue: [selectedLateralItem stopCreationMonitor] 
	ifFalse: [selectedLateralItem startCreationMonitor]