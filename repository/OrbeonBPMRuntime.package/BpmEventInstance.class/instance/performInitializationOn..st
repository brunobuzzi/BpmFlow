process execution
performInitializationOn: aBpmProcessInstance
	"The receiver perform the creation operation in the process instance <aBpmProcessInstance>.
	This operatoin initialize the receiver inside the process <aBpmProcessInstance>"

	aBpmProcessInstance addEvent: self.

	self isTimerEvent ifFalse: [^self].

	"attached event were already put on <BpmTimerEventMonitor> when the parent task <BpmTaskInstance> was created"
	self isAttachedEvent ifTrue: [^self].

	"the receiver is an independent timer (no attached to any task) so it is added to the <BpmTimerEventMonitor>"
	self defaultTimerEventMonitor startMonitoringArtifact: self.