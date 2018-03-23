monitor process creation
includesProcessCreationFor: aBpmProcessDefinition
	"Answer whether or not the process definition <aBpmProcessDefinition> is included in the receiver for automatic process creation"

	^self getAllMonitoredProcessDefinition identityIncludes: aBpmProcessDefinition