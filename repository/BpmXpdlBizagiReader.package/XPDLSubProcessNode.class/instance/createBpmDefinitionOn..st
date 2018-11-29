other
createBpmDefinitionOn: aBpmProcessDefinition
	"The receiver answer a sub instance of <BpmArtifactDefinition> that represent the XPDL element (the receiver) in the BPM model"

	^(super createBpmDefinitionOn: aBpmProcessDefinition)
			isEmbedded: isEmbedded;
			yourself