anonymous mapping
isRegisteredAsAnonymousStart: aBpmProcessDefinition
	"Answer whether or not <aBpmProcessDefinition> is register with anonymous start"

	^self anonymousFormMapping includesKey: aBpmProcessDefinition getAnonymousFormName