anonymous form
getAnonymousFormName
	"Answer the name of the anonymous form"

	^[executionPath getAnonymousFormName] on: Exception do: [:ex | ^'N/A']