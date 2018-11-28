process execution
finalize

	super finalize.

	self isTimerEvent ifFalse: [^self].

	self defaultTimerEventMonitor stopMonitoringArtifact: self.

	"<attachedTask finalize> is NOT used because it will cause an infinit loop. 
	The task will attempt to finalize the attached event again and the attached event will attempt to fnalize the task and ...."
	(self isAttachedEvent and: [self isInterrupting]) 
	ifTrue: [attachedTask finalizeWithoutAttachedEvents].