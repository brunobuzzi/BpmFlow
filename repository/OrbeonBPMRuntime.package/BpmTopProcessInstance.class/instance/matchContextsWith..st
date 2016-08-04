other
matchContextsWith: aBpmUser
	"Answer whether or not the receiver has  a context applications that match with the collection of applications in <collectionOfApplications>.
	The <AND> context match for ALL satisfy.
	The <OR> context match for ANY satisfy.
	If any of both <<AND> <OR> is true --> true "
	| userApplications |

	userApplications := aBpmUser getApplications.

	^(andContextApplications notEmpty and: [andContextApplications allSatisfy: [:each | userApplications includes: each]]) 
		or: [orContextApplications anySatisfy: [:each | userApplications includes: each]]