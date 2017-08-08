monitoring
triggerProcessCreation
	"The receiver iterate over all process definition <BpmProcessDefinition> with timer creation and create corresponding process instances <BpmProcessInstance> if required"

	monitoredProcessDefinitions do: [:processDefinition | | timerBlock lastExecutionTime processInstance |
		timerBlock := processDefinition getStartTimerBlock.
		lastExecutionTime := self getLastProcessCreationTimeFor: processDefinition.
		(timerBlock value: lastExecutionTime value: TimeStamp now)  "evaluates the Timer Block"
		ifTrue: [processInstance := processDefinition createAndStartProcessInstance: nil. "create the <BpmProcessInstance>"
					self updateLastExecutionTimeFor: processInstance].
	].