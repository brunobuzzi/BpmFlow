monitor process creation
triggerProcessCreationForAll: processCollection atTime: aTimeStamp
	"The receiver iterate over <processCollection> (collection of) <BpmProcessDefinition> with timer creation and create corresponding process instances <BpmProcessInstance> if required"

	processCollection do: [:processDefinition | | timerBlock lastExecutionTime processInstance |
		timerBlock := processDefinition getStartTimerBlock.
		lastExecutionTime := self getLastProcessCreationTimeFor: processDefinition.
		(timerBlock value: lastExecutionTime value: aTimeStamp)  "evaluates the Timer Block"
		ifTrue: [processInstance := processDefinition createAndStartProcessInstance: nil. "create the <BpmProcessInstance>"
					self updateLastExecutionTimeFor: processInstance].
	].