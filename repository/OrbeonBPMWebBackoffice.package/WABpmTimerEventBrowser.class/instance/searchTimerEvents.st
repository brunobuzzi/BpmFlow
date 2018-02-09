other
searchTimerEvents
	| appName procName |
	
	appName := self searchValueAt: 'application' ifAbsent: [''].
	procName := self searchValueAt: 'process-type' ifAbsent: [''].

	self defaultTimerEventMonitor