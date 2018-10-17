*orbeonBPMXpdl
createBpmDefinitionOn: aBpmProcessDefinition
	"The receiver answer a sub instance of <BpmArtifactDefinition> that represent the XPDL element (the receiver) in the BPM model"
	| loop activityDefinition |

	activityDefinition := (self getBpmClass newInProcess: aBpmProcessDefinition)
		name: self getName;
		yourself.

	self setInformedTo: activityDefinition.

	loop := self getLoopTypeClass for: activityDefinition.
	loop startQuantity: self getStartQuantity;
		completionQuantity: self getCompletionQuantity;
		setLoop: loopCondition.

	^activityDefinition loop: loop