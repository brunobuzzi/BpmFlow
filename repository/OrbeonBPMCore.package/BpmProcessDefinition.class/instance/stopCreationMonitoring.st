timer
stopCreationMonitoring
	"The receiver call the process creation monitor <BpmTimerEventMonitor> to stop the monitoring <self> for automatic process creation."

	^self defaultTimerEventMonitor stopMonitoringProcessCreation: self