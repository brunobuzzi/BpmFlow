applications
getApplications
	"The receiver answer a collection with all <Applications> that has a related role <aBpmRole> with the receiver"

	^(roles collect: [:eachRole | eachRole application]) asSet asOrderedCollection