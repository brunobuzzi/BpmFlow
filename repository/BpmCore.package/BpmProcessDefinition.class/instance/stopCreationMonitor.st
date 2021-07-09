timer
stopCreationMonitor
	"The receiver call the process creation monitor <BpmTimerEventMonitor> to stop the monitoring <self> for automatic process creation."

	^self systemRoot stopMonitoringProcessCreation: self