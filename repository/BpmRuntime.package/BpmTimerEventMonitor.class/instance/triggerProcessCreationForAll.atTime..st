monitor process creation
triggerProcessCreationForAll: processCollection atTime: aTimeStamp
	"The receiver iterate over <processCollection> (collection of) <BpmProcessDefinition> with timer creation and create corresponding process instances <BpmProcessInstance> if required"
	| instancesCollection |

	instancesCollection := OrderedCollection new.

	processCollection do: [:processDefinition | | lastExecutionTime processInstance |
		lastExecutionTime := self getLastProcessCreationTimeFor: processDefinition.
		(processDefinition evaluateStartTimerBlockLastExecution: lastExecutionTime currentTime: aTimeStamp) "evaluates the Timer Block"
		ifTrue: [processInstance := processDefinition createAndStartProcessInstance: nil. "create the <BpmProcessInstance>"
					self updateLastExecutionTimeFor: processInstance.
					instancesCollection add: processInstance].
	].

	^instancesCollection