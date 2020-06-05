*bpmruntime
getExistingBpmApplicationOrCreateNewNamed: aString
	"The receiver answer a instance of it self named <aString>. 
	If it is present in the cache --> answer the existing one.
	If absent --> create a new one.
	It also initialize instance variables of the receiver only used by BpmFlow (see issue: AbstractApplicationObjects#8)"

	^self cache 
		at: aString 
		ifPresent: [:application | application]
		ifAbsent: [super new initialize
						applicationName: aString;
						initializeForBpmFlow;
						addToCache;
						yourself]