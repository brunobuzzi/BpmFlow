monitor process creation
triggerProcessCreation
	"The receiver iterate over all process definition <BpmProcessDefinition> with timer creation and create corresponding process instances <BpmProcessInstance> if required"

	^self triggerProcessCreationWith: TimeStamp now