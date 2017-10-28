process execution
finalize

	super finalize.

	self isTimerEvent ifFalse: [^self].

	self defaultTimerEventMonitor stopMonitoringArtifact: self.