other
matchContextsApplicationWith: collectionOfApplications
	"Answer whether or not the receiver has  a context applications that match with the collection of applications in <collectionOfApplications>.
	The <AND> context match for ALL satisfy.
	The <OR> context match for ANY satisfy.
	If any of both <<AND> <OR> is true --> true "

	(andContextApplications notEmpty and: [orContextApplications notEmpty])
	ifTrue: [^(andContextApplications allSatisfy: [:each | collectionOfApplications includes: each])
					or: [orContextApplications anySatisfy: [:each | collectionOfApplications includes: each]]].

	andContextApplications notEmpty ifTrue: [^andContextApplications allSatisfy: [:each | collectionOfApplications includes: each]].

	^orContextApplications anySatisfy: [:each | collectionOfApplications includes: each]