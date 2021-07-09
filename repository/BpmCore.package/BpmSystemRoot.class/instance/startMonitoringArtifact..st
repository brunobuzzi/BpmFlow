events monitor
startMonitoringArtifact: aBpmArtifactInstance
	"The receiver includes <aBpmArtifactInstance> to be monitored for task with timers or timer events.
	The time span of <aBpmArtifactInstance> depends on its definition"

	^eventsMonitor startMonitoringArtifact: aBpmArtifactInstance