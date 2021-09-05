bpm processes
isRegisteredAsAnonymousStart: aBpmProcessDefinition
	"Answer whether or not <aBpmProcessDefinition> is register with anonymous start"

	^anonymousFormMapping includesKey: aBpmProcessDefinition getAnonymousFormName