process execution
createAttachedEventsIn: aBpmProcessInstance
	" The event definitions <BpmEventDefinition> attached to the receiver are created as concrete instances of <BpmEventInstance>"

	"for now only -TimerEvents- are created attached to its Task. In the future other EventInstances should be created as we complete the BPMN standart"

	(self getAttachedEventDefinitions select: [:eventDefinition | eventDefinition isTimerEvent]) do: [:eventDefinition | | eventInstance |
			eventInstance := eventDefinition createInstanceOn: aBpmProcessInstance parentArtifact: self.
			eventInstance trigger: self;
				performInitializationOn: aBpmProcessInstance attachTo: self.
			self systemRoot startMonitoringArtifact: eventInstance.
	].