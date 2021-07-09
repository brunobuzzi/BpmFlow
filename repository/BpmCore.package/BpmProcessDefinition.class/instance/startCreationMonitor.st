timer
startCreationMonitor
	"The receiver call the process creation monitor <BpmTimerEventMonitor> to add <self> to be monitored for automatic process creation.
	The time span between processes creation depends on the Timer inside the receiver"

	^self systemRoot startMonitoringProcessCreation: self