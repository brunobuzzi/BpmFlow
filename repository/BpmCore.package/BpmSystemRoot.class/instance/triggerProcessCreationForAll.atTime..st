events monitor
triggerProcessCreationForAll: processCollection atTime: aTimeStamp
	"The receiver iterate over <processCollection> (collection of) <BpmProcessDefinition> with timer creation and create corresponding process instances <BpmProcessInstance> if required"

	^eventsMonitor triggerProcessCreationForAll: processCollection atTime: aTimeStamp