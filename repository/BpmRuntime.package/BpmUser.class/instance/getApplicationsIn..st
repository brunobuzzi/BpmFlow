bpm environments
getApplicationsIn: aBpmEnvironment
	"The receiver answer a collection with all <Applications> that has a related role <aBpmRole> with the receiver in environment <aBpmEnvironment>"

	^((self rolesIn: aBpmEnvironment) collect: [:eachRole | eachRole application]) asSet asOrderedCollection