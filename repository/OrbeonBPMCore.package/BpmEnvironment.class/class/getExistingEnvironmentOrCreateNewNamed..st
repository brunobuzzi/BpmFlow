other
getExistingEnvironmentOrCreateNewNamed: aString
	"The receiver answer <aBpmEnvironment> named <aString>.
	If an environment exist with name <aString> answer the existing environment in the <Cache>.
	If not create a new one"

	^self getEnvironmentNamed: aString ifNone: [(self newNamed: aString) addToCache]