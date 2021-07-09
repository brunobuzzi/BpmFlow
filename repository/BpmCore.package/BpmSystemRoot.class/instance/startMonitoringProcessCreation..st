events monitor
startMonitoringProcessCreation: aBpmProcessDefinition
	"The receiver includes <aBpmProcessDefinition> to be monitored for automatic process creation.
	The time span between processes creation depends on the Timer inside <aBpmProcessDefinition>"

	^eventsMonitor startMonitoringProcessCreation: aBpmProcessDefinition