render transitions
triggerErrorEvent: aBpmEventDefinition from: aBpmTaskInstance in: aBpmProcessInstance
	"The receiver trigger the error <aBpmEventDefinition> from <aBpmArtifactInstance> in <aBpmProcessInstance>"

	^aBpmProcessInstance triggerEvent: aBpmEventDefinition withProperties: Dictionary new from: aBpmTaskInstance