monitor process creation
triggerProcessCreationWith: aTimeStamp
	"The receiver iterate over all process definition <BpmProcessDefinition> with timer creation and create corresponding process instances <BpmProcessInstance> if required"

	^self triggerProcessCreationForAll: self getAllMonitoredProcessDefinition atTime: aTimeStamp