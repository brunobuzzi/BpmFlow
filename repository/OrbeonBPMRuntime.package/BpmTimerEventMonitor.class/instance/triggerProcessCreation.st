monitoring
triggerProcessCreation
	"The receiver iterate over all process definition <BpmProcessDefinition> with timer creation and create corresponding process instances <BpmProcessInstance> if required"

	monitoredProcessDefinitions do: [:processDefinition | | timerBlock lastExecutionTime processInstance |
		timerBlock := processDefinition getStartTimerBlock.
		lastExecutionTime := self getLastProcessCreationTimeFor: processDefinition.
		(timerBlock value: lastExecutionTime value: TimeStamp now)
		ifTrue: [processInstance := self createProcessInstanceBasedOn: processDefinition.
					self updateLastExecutionTimeFor: processInstance].
	].