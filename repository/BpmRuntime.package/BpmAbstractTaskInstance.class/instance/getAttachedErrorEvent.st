other
getAttachedErrorEvent
	"The receiver answer the first instance of <BpmEventDefinition> with type <BpmErrorComponentDefinition>.
	If none answer <nil>"

	^definition attachedEvents detect: [:eventDefinition | eventDefinition isErrorEvent] ifNone: []