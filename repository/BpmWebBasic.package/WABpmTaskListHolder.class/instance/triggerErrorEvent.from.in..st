render transitions
triggerErrorEvent: aBpmEventDefinition from: aBpmTaskInstance in: aBpmProcessInstance
	"The receiver trigger the error <aBpmEventDefinition> from <aBpmArtifactInstance> in <aBpmProcessInstance>"
	| errorCode |

	errorCode := self componentValueAt: 'triggerErrorEvent' ifAbsent: [1].

	^aBpmProcessInstance triggerEvent: aBpmEventDefinition withProperties: (Dictionary newFromPairs: {'errorCode' . errorCode}) from: aBpmTaskInstance